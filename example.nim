import std/[locks]
import pugl

var world: ptr Puglworld = puglnewworld(Puglprogram, 0'u32)

echo(puglstrerror(puglsetworldstring(world, PUGL_CLASS_NAME, "test")))

type SharedData* = object
    mutex *: Lock
    foo   *: float

puglsetworldhandle(world, alloc0(SharedData.sizeof))
# var shared_data: ptr SharedData = cast[ptr SharedData](puglgetworldhandle(world))

var view: ptr PuglView = puglnewview(world)

# const default_width: PuglSpan = 1920
# const default_height: PuglSpan = 1080

echo(puglstrerror(puglSetViewString(view, PUGL_WINDOW_TITLE, "My Window")))
echo(puglstrerror(puglSetSizeHint(view, PUGL_DEFAULT_SIZE, 1920, 1080)))
echo(puglstrerror(puglSetSizeHint(view, PUGL_MIN_SIZE, 640, 480)))
echo(puglstrerror(puglSetSizeHint(view, PUGL_MIN_ASPECT, 1, 1)))
echo(puglstrerror(puglSetSizeHint(view, PUGL_MAX_ASPECT, 16, 9)))

echo(puglstrerror(puglSetViewHint(view, PUGL_RESIZABLE, PUGL_TRUE)))
echo(puglstrerror(puglSetViewHint(view, PUGL_IGNORE_KEY_REPEAT, PUGL_TRUE)))

# echo(puglstrerror(puglsetparentwindow(view, native view handle)))

type ViewData* = object
    bar *: int64

puglsethandle(view, alloc0(ViewData.sizeof))
# var view_data: ptr ViewData = cast[ptr ViewData](puglgethandle(view))
# var world2: ptr Puglworld = puglgetworld(view)

echo(puglstrerror(puglSetBackend(view, puglGlBackend())))

echo(puglstrerror(puglSetViewHint(view, PUGL_CONTEXT_VERSION_MAJOR, 3)))
echo(puglstrerror(puglSetViewHint(view, PUGL_CONTEXT_VERSION_MINOR, 3)))
echo(puglstrerror(puglSetViewHint(view, PUGL_CONTEXT_PROFILE, PUGL_OPENGL_CORE_PROFILE)))

var vertices: array[9, float32] = [
    -0.5, -0.5, 0.0,
     0.5, -0.5, 0.0,
     0.0,  0.5, 0.0
]
# var vertices = [
#     0.25, 0.25, 0.0,
#     0.25, 0.75, 0.0,
#     0.75, 0.25, 0.0
# ]
var vbo: uint32
var vao: uint32

var indices = [0, 1, 2]

var vertex_shader_str: string = """
#version 330 core
layout (location = 0) in vec3 aPos;

void main()
{
    gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
}
"""
var vertex_shader_id: uint32

var fragment_shader_str: string = """
#version 330 core
out vec4 FragColor;

void main()
{
    FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
}
"""
var fragment_shader_id: uint32

var shader_program_id: uint32

proc onEvent(view: ptr PuglView, event: ptr PuglEvent): PuglStatus {.cdecl.} =
    var view_data: ptr ViewData = cast[ptr ViewData](puglgethandle(view))
    var world: ptr Puglworld = puglgetworld(view)
    case event.typefield:
        of Puglnothing:
            discard
        of Puglrealize:
            discard
        of Puglunrealize:
            discard
        of Puglconfigure:
            echo("configure")
        of Puglupdate:
            discard
        of Puglexpose:
            glViewport(0, 0, GLsizei(uint16(event.configure.width)), GLsizei(uint16(event.configure.height)))
            glClearColor(0.2, 0.2, 0.2, 1.0)
            glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT)
            glUseProgram(shader_program_id)
            glBindVertexArray(vao)
            glDrawArrays(GL_TRIANGLES, 0, 3)
        of Puglclose:
            quit()
        of Puglfocusin:
            echo("focus")
        of Puglfocusout:
            echo("unfocus")
        of Puglkeypress:
            echo("press" & chr(event.key.key))
        of Puglkeyrelease:
            echo("release" & chr(event.key.key))
        of Pugltext:
            discard
        of Puglpointerin:
            discard
        of Puglpointerout:
            discard
        of Puglbuttonpress:
            discard
        of Puglbuttonrelease:
            discard
        of Puglmotion:
            discard
        of Puglscroll:
            discard
        of Puglclient:
            discard
        of Pugltimer:
            discard
        of Puglloopenter:
            discard
        of Puglloopleave:
            discard
        of Pugldataoffer:
            discard
        of Pugldata:
            discard
    return Puglsuccess

echo(puglstrerror(puglseteventfunc(view, onEvent)))

var status: PuglStatus = puglrealize(view)
if status != Puglsuccess:
    echo("error realizing view")
    echo(puglstrerror(status))
    quit(1)

echo("glad load gl")
echo(puglstrerror(puglentercontext(view)))
assert gladLoadGL(puglGetProcAddress)
echo(cast[uint64](puglGetProcAddress("glGetString")))
echo(cast[cstring](cast[proc (name: GLenum): ptr GLubyte {.stdcall.}](puglGetProcAddress("glGetString"))(GL_VERSION)))

# make vertex shader
vertex_shader_id = glCreateShader(GL_VERTEX_SHADER)
glShaderSource(GLuint(vertex_shader_id), GLsizei(1), allocCStringArray([vertex_shader_str]), nil)
glCompileShader(vertex_shader_id)
var success: int32
glGetShaderiv(vertex_shader_id, GL_COMPILE_STATUS, addr success)
if success == 0:
    var info_log: cstring # = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "
    glGetShaderInfoLog(vertex_shader_id, 512, nil, info_log)
    echo("vertex shader compilation failed")
    echo(info_log)

# make fragment shader
fragment_shader_id = glCreateShader(GL_FRAGMENT_SHADER)
glShaderSource(GLuint(fragment_shader_id), GLsizei(1), allocCStringArray([fragment_shader_str]), nil)
glCompileShader(fragment_shader_id)
# var success: int32
glGetShaderiv(fragment_shader_id, GL_COMPILE_STATUS, addr success)
if success == 0:
    var info_log: cstring
    glGetShaderInfoLog(fragment_shader_id, 512, nil, info_log)
    echo("fragment shader compilation failed")
    echo(info_log)

# make shader program
shader_program_id = glCreateProgram()
glAttachShader(shader_program_id, vertex_shader_id)
glAttachShader(shader_program_id, fragment_shader_id)
glLinkProgram(shader_program_id)
glGetProgramiv(shader_program_id, GL_LINK_STATUS, addr success)
if success == 0:
    var info_log: cstring
    glGetProgramInfoLog(fragment_shader_id, 512, nil, info_log)
    echo("shader program link failed")
    echo(info_log)
glUseProgram(shader_program_id)
glDeleteShader(vertex_shader_id)
glDeleteShader(fragment_shader_id)

glGenVertexArrays(1, addr vao)
glGenBuffers(1, addr vbo)
glBindVertexArray(vao)
glBindBuffer(GL_ARRAY_BUFFER, vbo)
glBufferData(GL_ARRAY_BUFFER, GLsizeiptr(vertices.sizeof), addr vertices, GL_STATIC_DRAW)
glVertexAttribPointer(0, 3, GL_TYPE_FLOAT, GL_FALSE, 0, cast[pointer](0))
glEnableVertexAttribArray(0)
glBindBuffer(GL_ARRAY_BUFFER, 0)
glBindVertexArray(0)

echo(puglstrerror(puglleavecontext(view)))

# Puglshowpassive Puglshowraise Puglshowforceraise
echo(puglstrerror(puglshow(view, Puglshowforceraise)))

while true:
    discard puglUpdate(world, -1.0)
# while (!app.quit) {
    # puglUpdate(app.world, -1.0);


# puglFreeView(view);
# puglFreeWorld(app.world);
