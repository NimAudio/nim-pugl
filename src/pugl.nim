# when false:
#     import futhark

#     importc:
#         path "pugl/pugl_source/include/pugl/"
#         path "pugl/pugl_source/src/"
#         # compilerarg "-framework OpenGL"
#         # compilerarg "-foo"
#         # change include to "attributes.h" from "pugl/attributes.h"
#         "pugl.h"
#         "types.h"
#         # "gl.h"
#         # "glu.h"
import pugl/[pugl_header, gl]
import std/[os] #, paths]
export pugl_header, gl

proc puglGetProcAddress*(name: cstring): pointer {.cdecl, importc: "puglGetProcAddress".}
proc puglEnterContext*(view: Puglview): Puglstatus {.cdecl, importc: "puglEnterContext".}
proc puglLeaveContext*(view: Puglview): Puglstatus {.cdecl, importc: "puglLeaveContext".}
proc puglGlBackend*(): ptr Puglbackend {.cdecl, importc: "puglGlBackend".}

# var package_path = Path(getAppDir())
# echo("-v -I" & (currentSourcePath().parentDir() / "pugl" / "pugl_source" / "include"))
# echo(currentSourcePath().parentDir())

when defined(macosx):
    {.passl: "-framework OpenGL".}
    {.passl: "-framework Foundation".}
    {.passl: "-framework CoreGraphics".}
    {.passl: "-framework CoreVideo".}
    {.passl: "-framework Cocoa".}
    # kinda a kludge and poisons syntax highlighting but it fixes an issue with clang not finding the relative include path
    {.compile(currentSourcePath().parentDir() / "pugl" / "includes_mac.m", "-I" & (currentSourcePath().parentDir() / "pugl" / "pugl_source" / "include")) .}
else:
    #TODO make sure the paths are interpreted correctly on windows
    {.compile(currentSourcePath().parentDir() / "pugl" / "includes.c", "-I" & (currentSourcePath().parentDir() / "pugl" / "pugl_source" / "include")) .}

# var foo = puglGlBackend()
# echo(foo)
