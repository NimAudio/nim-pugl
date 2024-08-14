#include "pugl_source/include/pugl/pugl.h"
#include "pugl_source/include/pugl/gl.h"
#include "pugl_source/include/pugl/glu.h"
#include "pugl_source/src/common.c"
#include "pugl_source/src/internal.c"
#include "pugl_source/src/macros.h"

#ifdef _WIN32
#  include "pugl_source/src/win.c"
#  include "pugl_source/src/win_gl.c"
#else
#  include "pugl_source/src/x11.c"
#  include "pugl_source/src/x11_gl.c"
#endif
