# import gl
import std/[macros, terminal]

# macro expandMacros*(body: untyped) =
#     ## Expands one level of macro - useful for debugging.
#     ## Can be used to inspect what happens when a macro call is expanded,
#     ## without altering its result.
#     ##
#     ## For instance,
#     ##
#     ## .. code-block:: nim
#     ##   import std/[sugar, macros]
#     ##
#     ##   let
#     ##     x = 10
#     ##     y = 20
#     ##   expandMacros:
#     ##     dump(x + y)
#     ##
#     ## will actually dump `x + y`, but at the same time will print at
#     ## compile time the expansion of the `dump` macro, which in this
#     ## case is `debugEcho ["x + y", " = ", x + y]`.
#     echo(body.toStrLit)

macro debug_call*(arg: untyped): untyped =
    when not defined(gltrace):
        return arg
    else:
        var output_nodes: seq[NimNode]
        for statement in arg:
            # var new_proc = newProc(
            #                     name: newEmptyNode(),
            #                     params: statement[1][0][0],
            #                     body: newStmtList(),
            #                     procType: nnkLambda,
            #                     pragmas: statement[1][0][1])
            # echo(statement[1].treeRepr)
            # var loaded_ptr = newVarStmt(ident(statement[0].repr & "Fn2"), statement[1][1])
            var loaded_ptr = newAssignment(ident(statement[0].repr & "Fn"), statement[1])
            var new_proc = newProc(
                            name = newEmptyNode(),
                            params = [newEmptyNode()],
                            body = newStmtList(),
                            procType = nnkProcDef,
                            pragmas = newEmptyNode())
            # echo(statement[0].repr)
            # echo(statement[1][0][0].treeRepr) # I/O
            # echo(statement[1][0][1].treeRepr) # pragma
            # echo(statement[1][3].treeRepr)
            # echo(statement[1].treeRepr)
            # echo(new_proc.treeRepr)
            new_proc[3] = statement[1][0][0]
            new_proc[4] = statement[1][0][1]
            var inputs: seq[NimNode]
            var outputs: seq[NimNode]
            var to_echo: seq[NimNode]
            to_echo &= ident("fgRed")
            to_echo &= newStrLitNode(statement[0].repr & ": ")
            to_echo &= ident("fgDefault")
            for input in statement[1][0][0]:
                if input.kind == nnkIdentDefs:
                    # echo(input.treeRepr)
                    to_echo &= ident("styleDim")
                    to_echo &= newStrLitNode(input[0].repr & ": ")
                    # if input[1].repr == "GLenum":
                    #     to_echo &= newStrLitNode(input[1].repr & ": ")
                    to_echo &= ident("resetStyle")
                    inputs &= ident(input[0].repr)
                    var prefix = newNimNode(nnkPrefix)
                    prefix &= ident("$")
                    if (input[1].kind == nnkPtrTy) and (input[1][0].repr != "pointer"):
                        # var deref = newNimNode(nnkBracketExpr)
                        # deref &= ident(input[0].repr)
                        # prefix &= deref
                        prefix &= newCall(ident("safe_str"), ident(input[0].repr))
                    elif (input[1].kind != nnkPtrTy) and (input[1].repr != "pointer"):
                        if input[1].repr == "cstringArray":
                            # prefix &= newCall(ident("cstringArrayToSeq"), ident(input[0].repr))
                            prefix &= newStrLitNode("cstringArray")
                        else:
                            prefix &= ident(input[0].repr)
                    else:
                        prefix &= newStrLitNode("pointer")
                    # echo(prefix.treeRepr)
                    to_echo &= prefix
                    to_echo &= newStrLitNode(", ")
            # if len(inputs) > 0:
            # statement[1][1] = ident(statement[0].repr & "Fn")
            # echo(statement[1][1].treeRepr)
            # new_proc[6] &= newCall("echo", to_echo)
            new_proc[6] &= newCall(newDotExpr(ident("stdout"), ident("styledWriteLine")), to_echo)
            if statement[1][0][0][0].kind == nnkEmpty:
                new_proc[6] &= newCall(ident(statement[0].repr & "Fn"), inputs)
                var ret = newNimNode(nnkReturnStmt)
                ret &= newEmptyNode()
                new_proc[6] &= ret
            else:
                var ret = newNimNode(nnkReturnStmt)
                ret &= newCall(ident(statement[0].repr & "Fn"), inputs)
                new_proc[6] &= ret
            # else:
            #     echo(statement.treeRepr)
            # echo(new_proc.treeRepr)
            # var capture_command = newNimNode(nnkCommand)
            # capture_command &= ident("capture")
            # capture_command &= ident(statement[0].repr & "Fn")
            # capture_command &= newStmtList(newAssignment(statement[0], new_proc))
            # output_nodes &= newStmtList(loaded_ptr, capture_command)
            # echo(new_proc.toStrLit)
            output_nodes &= newStmtList(loaded_ptr, newAssignment(statement[0], new_proc))
            # echo("---")
            # echo(newStmtList(loaded_ptr, capture_command).treeRepr)
        return newStmtList(output_nodes)
        # echo(newStmtList(output_nodes).astGenRepr)
        # echo(newStmtList(output_nodes).treeRepr)

macro debug_types*(arg: untyped): untyped =
    when not defined(gltrace):
        return arg
    else:
        var output_nodes: seq[NimNode]
        # echo(arg.treeRepr)
        for statement in arg[0]:
            if statement[1].kind != nnkProcTy:
                output_nodes &= statement
            else:
                output_nodes &= statement
                statement[0][1] = ident(statement[0][1].repr & "Fn")
                output_nodes &= statement
        var output_vars = newNimNode(nnkVarSection)
        output_vars &= output_nodes
        return newStmtList(output_vars)

macro debug_to_str*(arg: untyped): untyped =
    when not defined(gltrace):
        return arg
    else:
        var output_nodes: seq[NimNode]
        output_nodes &= arg
        # echo(arg.treeRepr)
        for statement in arg[0]:
            if (statement[2].kind == nnkDistinctTy) and (statement[0][1].repr != "GLenum"):
                # echo(statement.treeRepr)
                # echo(statement[0][1].treeRepr)
                # echo(statement[2][0].treeRepr)
                var proc_def = newProc()
                # echo(proc_def.treeRepr)
                proc_def[0] = newNimNode(nnkPostfix)
                proc_def[0] &= ident("*")
                proc_def[0] &= newNimNode(nnkAccQuoted)
                proc_def[0][1] &= ident("$")
                # proc_def[3] = newNimNode(nnkFormalParams)
                proc_def[3][0] = ident("string")
                proc_def[3] &= newNimNode(nnkIdentDefs)
                proc_def[3][1] &= ident("input")
                proc_def[3][1] &= statement[0][1]
                proc_def[3][1] &= newEmptyNode()
                proc_def[6] &= newNimNode(nnkReturnStmt)
                if statement[2][0].repr != "pointer":
                    proc_def[6][0] &= newNimNode(nnkPrefix)
                    proc_def[6][0][0] &= ident("$")
                    proc_def[6][0][0] &= newCall(statement[2][0], ident("input"))
                else:
                    proc_def[6][0] &= newStrLitNode("pointer")
                output_nodes &= proc_def
                # echo(proc_def.treeRepr)
        return newStmtList(output_nodes)

proc safe_str*[T](p: ptr T): string =
    if cast[uint64](p) != 0:
        return $p[]
    else:
        return "nil"

# var foo: ptr int = cast[ptr int](alloc0(sizeof(int)))
# foo[] = 5
# var bar: ptr int
# echo(safe_str(foo))
# echo(safe_str(bar))
# dumpTree:
#     safe_str(foo)

# dumpTree:
#     glIsRenderbuffer = cast[proc (renderbuffer: GLuint): GLboolean {.stdcall.}](load("glIsRenderbuffer"))
#     var glIsRenderbufferFn = load("glIsRenderbuffer")
#     capture glIsRenderbufferFn:
#         glIsRenderbuffer = proc (renderbuffer: GLuint): GLboolean {.stdcall.} =
#                             echo("glIsRenderbuffer")
#                             cast[proc (renderbuffer: GLuint): GLboolean {.stdcall.}](glIsRenderbufferFn)(renderbuffer)
# var glShaderSource: proc (shader: int, count: int, strings: cstringArray, length: ptr int) {.stdcall.}
# var glShaderSourceFn: proc (shader: int, count: int, strings: cstringArray, length: ptr int) {.stdcall.}
# proc returned(shader: int, count: int, strings: cstringArray, length: ptr int) {.stdcall.} = echo 10
# proc load(s: string): pointer =
#     return returned
# expandMacros:
#     debug_call:
#         glShaderSource = cast[proc (shader: int, count: int, strings: cstringArray, length: ptr int) {.stdcall.}](load("glShaderSource"))

# dumpTree:
#     stdout.styledWriteLine(fgRed, "red text ", styleBright, "bold red", fgDefault, " bold text", resetStyle, " default", styleDim, " dim?")

# expandMacros:
#     debug_to_str:
#         type
#             ClContext* = distinct pointer
#             GLbitfield* = distinct uint32
#             GLboolean* = bool
#             GLbyte* = int8
#             GLcharARB* = char

#             GLdebugProc* = proc (
#                 source: ClContext,
#                 typ: ClContext,
#                 id: ClContext,
#                 severity: ClContext,
#                 length: ClContext,
#                 message: ptr ClContext,
#                 userParam: pointer) {.stdcall.}

# var foo: ptr int = cast[ptr int](alloc0(sizeof(int)))
# foo[] = 5
# var bar: int = 10
# echo(foo[], bar[])

# dumpTree:
#     foo[]

# type
#     ClContext* = distinct pointer
# dumpTree:
#     proc `$`*(input: ClContext): string =
#         return "pointer"

# var c: cstringArray = cast[cstringArray](alloc0(sizeof(pointer) * 3))
# c[0] = cstring"foo"
# c[1] = cstring"bar"
# c[2] = cstring"bat"
# echo(cstringArrayToSeq(c))
# dumpTree:
#     cstringArrayToSeq(c)

# # dumpTree:
#     debug_types:
#         var
#             GLAD_GL_VERSION_1_0*: bool
#             GLAD_GL_VERSION_1_1*: bool
#             GLAD_GL_VERSION_1_2*: bool

#             glCullFace*: proc (mode: int) {.stdcall.}
#             glFrontFace*: proc (mode: int) {.stdcall.}
#             glHint*: proc (target: int, mode: int) {.stdcall.}
#             glLineWidth*: proc (width: float) {.stdcall.}
#             glPointSize*: proc (size: float) {.stdcall.}
#             glIsRenderbuffer*: proc (renderbuffer: uint): bool {.stdcall.}

# sample
# proc sample(load: proc) =
#     if not GLAD_GL_ARB_framebuffer_object: return
#     debug_call:
#     # dumpTree:
#         glIsRenderbuffer = cast[proc (renderbuffer: GLuint): GLboolean {.stdcall.}](load("glIsRenderbuffer"))
#         # glIsRenderbuffer = proc (renderbuffer: GLuint): GLboolean {.stdcall.} =
#         #                         echo("glIsRenderbuffer")
#         #                         cast[proc (renderbuffer: GLuint): GLboolean {.stdcall.}](load("glIsRenderbuffer"))(renderbuffer)
#         glBindRenderbuffer = cast[proc (target: GLenum, renderbuffer: GLuint) {.stdcall.}](load("glBindRenderbuffer"))
#         # glBindRenderbuffer = proc (target: GLenum, renderbuffer: GLuint) {.stdcall.} =
#         #                         echo("glBindRenderbuffer")
#         #                         cast[proc (target: GLenum, renderbuffer: GLuint) {.stdcall.}](load("glBindRenderbuffer"))(target, renderbuffer)

#         # glDeleteRenderbuffers = cast[proc (n: GLsizei, renderbuffers: ptr GLuint) {.stdcall.}](load("glDeleteRenderbuffers"))
#         # glGenRenderbuffers = cast[proc (n: GLsizei, renderbuffers: ptr GLuint) {.stdcall.}](load("glGenRenderbuffers"))
#         # glRenderbufferStorage = cast[proc (target: GLenum, internalformat: GLenum, width: GLsizei, height: GLsizei) {.stdcall.}](load("glRenderbufferStorage"))
#         # glGetRenderbufferParameteriv = cast[proc (target: GLenum, pname: GLenum, params: ptr GLint) {.stdcall.}](load("glGetRenderbufferParameteriv"))
#         # glIsFramebuffer = cast[proc (framebuffer: GLuint): GLboolean {.stdcall.}](load("glIsFramebuffer"))
#         # glBindFramebuffer = cast[proc (target: GLenum, framebuffer: GLuint) {.stdcall.}](load("glBindFramebuffer"))
#         # glDeleteFramebuffers = cast[proc (n: GLsizei, framebuffers: ptr GLuint) {.stdcall.}](load("glDeleteFramebuffers"))
#         # glGenFramebuffers = cast[proc (n: GLsizei, framebuffers: ptr GLuint) {.stdcall.}](load("glGenFramebuffers"))
#         # glCheckFramebufferStatus = cast[proc (target: GLenum): GLenum {.stdcall.}](load("glCheckFramebufferStatus"))
#         # glFramebufferTexture1D = cast[proc (target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) {.stdcall.}](load("glFramebufferTexture1D"))
#         # glFramebufferTexture2D = cast[proc (target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint) {.stdcall.}](load("glFramebufferTexture2D"))
#         # glFramebufferTexture3D = cast[proc (target: GLenum, attachment: GLenum, textarget: GLenum, texture: GLuint, level: GLint, zoffset: GLint) {.stdcall.}](load("glFramebufferTexture3D"))
#         # glFramebufferRenderbuffer = cast[proc (target: GLenum, attachment: GLenum, renderbuffertarget: GLenum, renderbuffer: GLuint) {.stdcall.}](load("glFramebufferRenderbuffer"))
#         # glGetFramebufferAttachmentParameteriv = cast[proc (target: GLenum, attachment: GLenum, pname: GLenum, params: ptr GLint) {.stdcall.}](load("glGetFramebufferAttachmentParameteriv"))
#         # glGenerateMipmap = cast[proc (target: GLenum) {.stdcall.}](load("glGenerateMipmap"))
#         # glBlitFramebuffer = cast[proc (srcX0: GLint, srcY0: GLint, srcX1: GLint, srcY1: GLint, dstX0: GLint, dstY0: GLint, dstX1: GLint, dstY1: GLint, mask: GLbitfield, filter: GLenum) {.stdcall.}](load("glBlitFramebuffer"))
#         # glRenderbufferStorageMultisample = cast[proc (target: GLenum, samples: GLsizei, internalformat: GLenum, width: GLsizei, height: GLsizei) {.stdcall.}](load("glRenderbufferStorageMultisample"))
#         # glFramebufferTextureLayer = cast[proc (target: GLenum, attachment: GLenum, texture: GLuint, level: GLint, layer: GLint) {.stdcall.}](load("glFramebufferTextureLayer"))

# for each node in StmtList
# copy Asgn source
# replace source with:
#     Lambda
#     formal params copied from source
#     pragma copied from source
#     inner StmtList:
#         Call echo StrLit of Call load StrLit
#         Call:
#             copy Cast from source
#             inputs are IdentDefs first Ident of Cast Proc FormalParams


# StmtList
#   Asgn
#     Ident "glIsRenderbuffer"
#     Lambda
#       Empty
#       Empty
#       Empty
#       FormalParams
#         Ident "GLboolean"
#         IdentDefs
#           Ident "renderbuffer"
#           Ident "GLuint"
#           Empty
#       Pragma
#         Ident "stdcall"
#       Empty
#       StmtList
#         Call
#           Ident "echo"
#           StrLit "glIsRenderbuffer"
#         Call
#           Cast
#             ProcTy
#               FormalParams
#                 Ident "GLboolean"
#                 IdentDefs
#                   Ident "renderbuffer"
#                   Ident "GLuint"
#                   Empty
#               Pragma
#                 Ident "stdcall"
#             Call
#               Ident "load"
#               StrLit "glIsRenderbuffer"
#           Ident "renderbuffer"
#   Asgn
#     Ident "glIsRenderbuffer"
#     Cast
#       ProcTy
#         FormalParams
#           Ident "GLboolean"
#           IdentDefs
#             Ident "renderbuffer"
#             Ident "GLuint"
#             Empty
#         Pragma
#           Ident "stdcall"
#       Call
#         Ident "load"
#         StrLit "glIsRenderbuffer"
#   Asgn
#     Ident "glBindRenderbuffer"
#     Cast
#       ProcTy
#         FormalParams
#           Empty
#           IdentDefs
#             Ident "target"
#             Ident "GLenum"
#             Empty
#           IdentDefs
#             Ident "renderbuffer"
#             Ident "GLuint"
#             Empty
#         Pragma
#           Ident "stdcall"
#       Call
#         Ident "load"
#         StrLit "glBindRenderbuffer"