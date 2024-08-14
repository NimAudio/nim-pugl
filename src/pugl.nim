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
export pugl_header, gl

proc puglGetProcAddress*(name: cstring): pointer {.cdecl, importc: "puglGetProcAddress".}
proc puglEnterContext*(view: Puglview): Puglstatus {.cdecl, importc: "puglEnterContext".}
proc puglLeaveContext*(view: Puglview): Puglstatus {.cdecl, importc: "puglLeaveContext".}
proc puglGlBackend*(): ptr Puglbackend {.cdecl, importc: "puglGlBackend".}

when defined(macosx):
    {.passl: "-framework OpenGL".}
    {.passl: "-framework Foundation".}
    {.passl: "-framework CoreGraphics".}
    {.passl: "-framework CoreVideo".}
    {.passl: "-framework Cocoa".}
    {.compile("pugl/includes_mac.m", "-Isrc/pugl/pugl_source/include") .}
else:
    {.compile("pugl/includes.c", "-v -Isrc/pugl/pugl_source/include") .}

# var foo = puglGlBackend()
# echo(foo)
