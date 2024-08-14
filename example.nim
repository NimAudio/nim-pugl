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

proc onEvent(view: ptr PuglView, event: ptr PuglEvent): PuglStatus {.cdecl.} =
    return Puglsuccess

echo(puglstrerror(puglseteventfunc(view, onEvent)))

type ViewData* = object
    bar *: int64

puglsethandle(view, alloc0(ViewData.sizeof))
# var view_data: ptr ViewData = cast[ptr ViewData](puglgethandle(view))
# var world2: ptr Puglworld = puglgetworld(view)

echo(puglstrerror(puglSetBackend(view, puglGlBackend())))

echo(puglstrerror(puglSetViewHint(view, PUGL_CONTEXT_VERSION_MAJOR, 3)))
echo(puglstrerror(puglSetViewHint(view, PUGL_CONTEXT_VERSION_MINOR, 3)))
echo(puglstrerror(puglSetViewHint(view, PUGL_CONTEXT_PROFILE, PUGL_OPENGL_CORE_PROFILE)))

var status: PuglStatus = puglrealize(view)
if status != Puglsuccess:
    echo("error realizing view")
    echo(puglstrerror(status))
    raise new Exception
else:
    # Puglshowpassive Puglshowraise Puglshowforceraise
    echo(puglstrerror(puglshow(view, Puglshowforceraise)))

    while true:
        discard puglUpdate(world, -1.0)
    # while (!app.quit) {
        # puglUpdate(app.world, -1.0);


    # puglFreeView(view);
    # puglFreeWorld(app.world);
