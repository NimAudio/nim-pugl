
from macros import hint

when not declared(enumpuglstringhint):
  type
    enumpuglstringhint* {.size: sizeof(cuint).} = enum
      Puglclassname = 1, Puglwindowtitle = 2
else:
  static :
    hint("Declaration of " & "enumpuglstringhint" &
        " already exists, not redeclaring")
when not declared(enumpugleventtype):
  type
    enumpugleventtype* {.size: sizeof(cuint).} = enum
      Puglnothing = 0, Puglrealize = 1, Puglunrealize = 2, Puglconfigure = 3,
      Puglupdate = 4, Puglexpose = 5, Puglclose = 6, Puglfocusin = 7,
      Puglfocusout = 8, Puglkeypress = 9, Puglkeyrelease = 10, Pugltext = 11,
      Puglpointerin = 12, Puglpointerout = 13, Puglbuttonpress = 14,
      Puglbuttonrelease = 15, Puglmotion = 16, Puglscroll = 17, Puglclient = 18,
      Pugltimer = 19, Puglloopenter = 20, Puglloopleave = 21,
      Pugldataoffer = 22, Pugldata = 23
else:
  static :
    hint("Declaration of " & "enumpugleventtype" &
        " already exists, not redeclaring")
when not declared(enumpugleventflag):
  type
    enumpugleventflag* {.size: sizeof(cuint).} = enum
      Puglissendevent = 1, Puglishint = 2
else:
  static :
    hint("Declaration of " & "enumpugleventflag" &
        " already exists, not redeclaring")
when not declared(enumpuglcrossingmode):
  type
    enumpuglcrossingmode* {.size: sizeof(cuint).} = enum
      Puglcrossingnormal = 0, Puglcrossinggrab = 1, Puglcrossingungrab = 2
else:
  static :
    hint("Declaration of " & "enumpuglcrossingmode" &
        " already exists, not redeclaring")
when not declared(enumpuglviewstyleflag):
  type
    enumpuglviewstyleflag* {.size: sizeof(cuint).} = enum
      Puglviewstylemapped = 1, Puglviewstylemodal = 2, Puglviewstyleabove = 4,
      Puglviewstylebelow = 8, Puglviewstylehidden = 16, Puglviewstyletall = 32,
      Puglviewstylewide = 64, Puglviewstylefullscreen = 128,
      Puglviewstyleresizing = 256, Puglviewstyledemanding = 512
else:
  static :
    hint("Declaration of " & "enumpuglviewstyleflag" &
        " already exists, not redeclaring")
when not declared(enumpuglkey):
  type
    enumpuglkey* {.size: sizeof(cuint).} = enum
      Puglkeybackspace = 8, Puglkeytab = 9, Puglkeyenter = 13,
      Puglkeyescape = 27, Puglkeyspace = 32, Puglkeydelete = 127,
      Puglkeyf1 = 57344, Puglkeyf2 = 57345, Puglkeyf3 = 57346,
      Puglkeyf4 = 57347, Puglkeyf5 = 57348, Puglkeyf6 = 57349,
      Puglkeyf7 = 57350, Puglkeyf8 = 57351, Puglkeyf9 = 57352,
      Puglkeyf10 = 57353, Puglkeyf11 = 57354, Puglkeyf12 = 57355,
      Puglkeypageup = 57393, Puglkeypagedown = 57394, Puglkeyend = 57395,
      Puglkeyhome = 57396, Puglkeyleft = 57397, Puglkeyup = 57398,
      Puglkeyright = 57399, Puglkeydown = 57400, Puglkeyprintscreen = 57409,
      Puglkeyinsert = 57410, Puglkeypause = 57411, Puglkeymenu = 57412,
      Puglkeynumlock = 57413, Puglkeyscrolllock = 57414,
      Puglkeycapslock = 57415, Puglkeyshiftl = 57425, Puglkeyshiftr = 57426,
      Puglkeyctrll = 57427, Puglkeyctrlr = 57428, Puglkeyaltl = 57429,
      Puglkeyaltr = 57430, Puglkeysuperl = 57431, Puglkeysuperr = 57432,
      Puglkeypad0 = 57440, Puglkeypad1 = 57441, Puglkeypad2 = 57442,
      Puglkeypad3 = 57443, Puglkeypad4 = 57444, Puglkeypad5 = 57445,
      Puglkeypad6 = 57446, Puglkeypad7 = 57447, Puglkeypad8 = 57448,
      Puglkeypad9 = 57449, Puglkeypadenter = 57450, Puglkeypadpageup = 57457,
      Puglkeypadpagedown = 57458, Puglkeypadend = 57459, Puglkeypadhome = 57460,
      Puglkeypadleft = 57461, Puglkeypadup = 57462, Puglkeypadright = 57463,
      Puglkeypaddown = 57464, Puglkeypadclear = 57501, Puglkeypadinsert = 57502,
      Puglkeypaddelete = 57503, Puglkeypadequal = 57504,
      Puglkeypadmultiply = 57514, Puglkeypadadd = 57515,
      Puglkeypadseparator = 57516, Puglkeypadsubtract = 57517,
      Puglkeypaddecimal = 57518, Puglkeypaddivide = 57519
else:
  static :
    hint("Declaration of " & "enumpuglkey" & " already exists, not redeclaring")
when not declared(enumpuglmod):
  type
    enumpuglmod* {.size: sizeof(cuint).} = enum
      Puglmodshift = 1, Puglmodctrl = 2, Puglmodalt = 4, Puglmodsuper = 8,
      Puglmodnumlock = 16, Puglmodscrolllock = 32, Puglmodcapslock = 64
else:
  static :
    hint("Declaration of " & "enumpuglmod" & " already exists, not redeclaring")
when not declared(enumpuglscrolldirection):
  type
    enumpuglscrolldirection* {.size: sizeof(cuint).} = enum
      Puglscrollup = 0, Puglscrolldown = 1, Puglscrollleft = 2,
      Puglscrollright = 3, Puglscrollsmooth = 4
else:
  static :
    hint("Declaration of " & "enumpuglscrolldirection" &
        " already exists, not redeclaring")
when not declared(enumpuglstatus):
  type
    enumpuglstatus* {.size: sizeof(cuint).} = enum
      Puglsuccess = 0, Puglfailure = 1, Puglunknownerror = 2,
      Puglbadbackend = 3, Puglbadconfiguration = 4, Puglbadparameter = 5,
      Puglbackendfailed = 6, Puglregistrationfailed = 7, Puglrealizefailed = 8,
      Puglsetformatfailed = 9, Puglcreatecontextfailed = 10,
      Puglunsupported = 11, Puglnomemory = 12
else:
  static :
    hint("Declaration of " & "enumpuglstatus" &
        " already exists, not redeclaring")
when not declared(enumpuglworldtype):
  type
    enumpuglworldtype* {.size: sizeof(cuint).} = enum
      Puglprogram = 0, Puglmodule = 1
else:
  static :
    hint("Declaration of " & "enumpuglworldtype" &
        " already exists, not redeclaring")
when not declared(enumpuglworldflag):
  type
    enumpuglworldflag* {.size: sizeof(cuint).} = enum
      Puglworldthreads = 1
else:
  static :
    hint("Declaration of " & "enumpuglworldflag" &
        " already exists, not redeclaring")
when not declared(enumpuglviewhint):
  type
    enumpuglviewhint* {.size: sizeof(cuint).} = enum
      Puglcontextapi = 0, Puglcontextversionmajor = 1,
      Puglcontextversionminor = 2, Puglcontextprofile = 3, Puglcontextdebug = 4,
      Puglredbits = 5, Puglgreenbits = 6, Puglbluebits = 7, Puglalphabits = 8,
      Pugldepthbits = 9, Puglstencilbits = 10, Puglsamplebuffers = 11,
      Puglsamples = 12, Pugldoublebuffer = 13, Puglswapinterval = 14,
      Puglresizable = 15, Puglignorekeyrepeat = 16, Puglrefreshrate = 17,
      Puglviewtypeenumval = 18, Pugldarkframe = 19
else:
  static :
    hint("Declaration of " & "enumpuglviewhint" &
        " already exists, not redeclaring")
# when not declared(enumpuglviewhintvalue):
#   type
#     enumpuglviewhintvalue* {.size: sizeof(cint).} = enum
#       Pugldontcare = -1, Puglfalse = 0, Pugltrue = 1, Puglopenglapi = 2,
#       Puglopenglesapi = 3, Puglopenglcoreprofile = 4,
#       Puglopenglcompatibilityprofile = 5
# else:
#   static :
#     hint("Declaration of " & "enumpuglviewhintvalue" &
#         " already exists, not redeclaring")

const PUGL_DONT_CARE                    *: cint = -1
const PUGL_FALSE                        *: cint = 0
const PUGL_TRUE                         *: cint = 1
const PUGL_OPENGL_API                   *: cint = 2
const PUGL_OPENGL_ESAPI                 *: cint = 3
const PUGL_OPENGL_CORE_PROFILE          *: cint = 4
const PUGL_OPENGL_COMPATIBILITY_PROFILE *: cint = 5

when not declared(enumpuglviewtype):
  type
    enumpuglviewtype* {.size: sizeof(cuint).} = enum
      Puglviewtypenormal = 0, Puglviewtypeutility = 1, Puglviewtypedialog = 2
else:
  static :
    hint("Declaration of " & "enumpuglviewtype" &
        " already exists, not redeclaring")
when not declared(enumpuglsizehint):
  type
    enumpuglsizehint* {.size: sizeof(cuint).} = enum
      Pugldefaultsize = 0, Puglminsize = 1, Puglmaxsize = 2,
      Puglfixedaspect = 3, Puglminaspect = 4, Puglmaxaspect = 5
else:
  static :
    hint("Declaration of " & "enumpuglsizehint" &
        " already exists, not redeclaring")
when not declared(enumpuglshowcommand):
  type
    enumpuglshowcommand* {.size: sizeof(cuint).} = enum
      Puglshowpassive = 0, Puglshowraise = 1, Puglshowforceraise = 2
else:
  static :
    hint("Declaration of " & "enumpuglshowcommand" &
        " already exists, not redeclaring")
when not declared(enumpuglcursor):
  type
    enumpuglcursor* {.size: sizeof(cuint).} = enum
      Puglcursorarrow = 0, Puglcursorcaret = 1, Puglcursorcrosshair = 2,
      Puglcursorhand = 3, Puglcursorno = 4, Puglcursorleftright = 5,
      Puglcursorupdown = 6, Puglcursorupleftdownright = 7,
      Puglcursoruprightdownleft = 8, Puglcursorallscroll = 9
else:
  static :
    hint("Declaration of " & "enumpuglcursor" &
        " already exists, not redeclaring")
when not declared(enumpuglviewstage):
  type
    enumpuglviewstage* {.size: sizeof(cuint).} = enum
      Puglviewstageallocated = 0, Puglviewstagerealized = 1,
      Puglviewstageconfigured = 2
else:
  static :
    hint("Declaration of " & "enumpuglviewstage" &
        " already exists, not redeclaring")
when not declared(structpuglworldinternalsimpl):
  type
    structpuglworldinternalsimpl* = distinct object
else:
  static :
    hint("Declaration of " & "structpuglworldinternalsimpl" &
        " already exists, not redeclaring")
when not declared(structpuglinternalsimpl):
  type
    structpuglinternalsimpl* = distinct object
else:
  static :
    hint("Declaration of " & "structpuglinternalsimpl" &
        " already exists, not redeclaring")
type
  Puglcoord_520094041 = int16 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:39:17
  Puglspan_520094043 = uint16 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:47:18
  structpuglrect_520094045 {.pure, inheritable, bycopy.} = object
    x*: Puglcoord_520094042  ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:59:9
    y*: Puglcoord_520094042
    width*: Puglspan_520094044
    height*: Puglspan_520094044

  Puglrect_520094047 = structpuglrect_520094046 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:64:3
  Puglstringhint_520094051 = enumpuglstringhint_520094050 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:91:3
  Pugleventtype_520094055 = enumpugleventtype_520094054 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:133:3
  Pugleventflag_520094059 = enumpugleventflag_520094058 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:139:3
  Pugleventflags_520094061 = uint32 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:142:18
  Puglcrossingmode_520094065 = enumpuglcrossingmode_520094064 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:149:3
  structpuglanyevent_520094067 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:152:9
    flags*: Pugleventflags_520094062

  Puglanyevent_520094069 = structpuglanyevent_520094068 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:155:3
  Puglviewstyleflag_520094073 = enumpuglviewstyleflag_520094072 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:199:3
  Puglviewstyleflags_520094075 = uint32 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:205:18
  Puglrealizeevent_520094077 = Puglanyevent_520094070 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:216:22
  Puglunrealizeevent_520094079 = Puglanyevent_520094070 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:228:22
  structpuglconfigureevent_520094081 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:238:9
    flags*: Pugleventflags_520094062
    x*: Puglcoord_520094042
    y*: Puglcoord_520094042
    width*: Puglspan_520094044
    height*: Puglspan_520094044
    style*: Puglviewstyleflags_520094076

  Puglconfigureevent_520094083 = structpuglconfigureevent_520094082 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:246:3
  Puglloopenterevent_520094085 = Puglanyevent_520094070 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:268:22
  Puglloopleaveevent_520094087 = Puglanyevent_520094070 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:278:22
  Puglcloseevent_520094089 = Puglanyevent_520094070 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:288:22
  Puglupdateevent_520094091 = Puglanyevent_520094070 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:305:22
  structpuglexposeevent_520094093 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:314:9
    flags*: Pugleventflags_520094062
    x*: Puglcoord_520094042
    y*: Puglcoord_520094042
    width*: Puglspan_520094044
    height*: Puglspan_520094044

  Puglexposeevent_520094095 = structpuglexposeevent_520094094 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:321:3
  Puglkey_520094099 = enumpuglkey_520094098 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:414:3
  Puglmod_520094103 = enumpuglmod_520094102 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:425:3
  Puglmods_520094105 = uint32 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:428:18
  structpuglfocusevent_520094107 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:436:9
    flags*: Pugleventflags_520094062
    mode*: Puglcrossingmode_520094066

  Puglfocusevent_520094109 = structpuglfocusevent_520094108 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:440:3
  structpuglkeyevent_520094111 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:459:9
    flags*: Pugleventflags_520094062
    time*: cdouble
    x*: cdouble
    y*: cdouble
    xroot*: cdouble
    yroot*: cdouble
    state*: Puglmods_520094106
    keycode*: uint32
    key*: uint32

  Puglkeyevent_520094113 = structpuglkeyevent_520094112 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:470:3
  structpugltextevent_520094115 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:483:9
    flags*: Pugleventflags_520094062
    time*: cdouble
    x*: cdouble
    y*: cdouble
    xroot*: cdouble
    yroot*: cdouble
    state*: Puglmods_520094106
    keycode*: uint32
    character*: uint32
    string*: array[8'i64, cschar]

  Pugltextevent_520094117 = structpugltextevent_520094116 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:495:3
  Puglscrolldirection_520094128 = enumpuglscrolldirection_520094127 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:517:3
  structpuglcrossingevent_520094130 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:526:9
    flags*: Pugleventflags_520094062
    time*: cdouble
    x*: cdouble
    y*: cdouble
    xroot*: cdouble
    yroot*: cdouble
    state*: Puglmods_520094106
    mode*: Puglcrossingmode_520094066

  Puglcrossingevent_520094132 = structpuglcrossingevent_520094131 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:536:3
  structpuglbuttonevent_520094134 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:556:9
    flags*: Pugleventflags_520094062
    time*: cdouble
    x*: cdouble
    y*: cdouble
    xroot*: cdouble
    yroot*: cdouble
    state*: Puglmods_520094106
    button*: uint32

  Puglbuttonevent_520094136 = structpuglbuttonevent_520094135 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:566:3
  structpuglmotionevent_520094138 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:571:9
    flags*: Pugleventflags_520094062
    time*: cdouble
    x*: cdouble
    y*: cdouble
    xroot*: cdouble
    yroot*: cdouble
    state*: Puglmods_520094106

  Puglmotionevent_520094140 = structpuglmotionevent_520094139 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:580:3
  structpuglscrollevent_520094142 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:591:9
    flags*: Pugleventflags_520094062
    time*: cdouble
    x*: cdouble
    y*: cdouble
    xroot*: cdouble
    yroot*: cdouble
    state*: Puglmods_520094106
    direction*: Puglscrolldirection_520094129
    dx*: cdouble
    dy*: cdouble

  Puglscrollevent_520094144 = structpuglscrollevent_520094143 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:603:3
  structpuglclientevent_520094146 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:618:9
    flags*: Pugleventflags_520094062
    data1*: uintptrt_520094149
    data2*: uintptrt_520094149

  uintptrt_520094148 = culong ## Generated based on /Library/Developer/CommandLineTools/usr/lib/clang/12.0.0/include/stdint.h:256:26
  Puglclientevent_520094150 = structpuglclientevent_520094147 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:623:3
  structpugltimerevent_520094152 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:635:9
    flags*: Pugleventflags_520094062
    id*: uintptrt_520094149

  Pugltimerevent_520094154 = structpugltimerevent_520094153 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:639:3
  structpugldataofferevent_520094156 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:655:9
    flags*: Pugleventflags_520094062
    time*: cdouble

  Pugldataofferevent_520094158 = structpugldataofferevent_520094157 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:659:3
  structpugldataevent_520094160 {.pure, inheritable, bycopy.} = object
    typefield*: Pugleventtype_520094056 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:668:9
    flags*: Pugleventflags_520094062
    time*: cdouble
    typeindex*: uint32

  Pugldataevent_520094162 = structpugldataevent_520094161 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:673:3
  unionpuglevent_520094164 {.union, bycopy.} = object
    any*: Puglanyevent_520094070 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:691:9
    typefield*: Pugleventtype_520094056
    button*: Puglbuttonevent_520094137
    configure*: Puglconfigureevent_520094084
    expose*: Puglexposeevent_520094096
    key*: Puglkeyevent_520094114
    text*: Pugltextevent_520094118
    crossing*: Puglcrossingevent_520094133
    motion*: Puglmotionevent_520094141
    scroll*: Puglscrollevent_520094145
    focus*: Puglfocusevent_520094110
    client*: Puglclientevent_520094151
    timer*: Pugltimerevent_520094155
    offer*: Pugldataofferevent_520094159
    data*: Pugldataevent_520094163

  Puglevent_520094166 = unionpuglevent_520094165 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:707:3
  Puglstatus_520094170 = enumpuglstatus_520094169 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:733:3
  Puglworld_520094172 = structpuglworldimpl_520094175 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:762:30
  structpuglworldimpl_520094174 {.pure, inheritable, bycopy.} = object
    impl*: ptr Puglworldinternals_520094267 ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:69:8
    handle*: Puglworldhandle_520094177
    starttime*: cdouble
    numviews*: csize_t
    views*: ptr ptr Puglview_520094189
    strings*: array[3'i64, cstring]
    typefield*: Puglworldtype_520094181

  Puglworldhandle_520094176 = pointer ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:765:15
  Puglworldtype_520094180 = enumpuglworldtype_520094179 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:771:3
  Puglworldflag_520094184 = enumpuglworldflag_520094183 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:781:3
  Puglworldflags_520094186 = uint32 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:784:18
  Puglview_520094188 = structpuglviewimpl_520094191 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:904:29
  structpuglviewimpl_520094190 {.pure, inheritable, bycopy.} = object
    world*: ptr Puglworld_520094173 ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:50:8
    backend*: ptr Puglbackend_520094193
    impl*: ptr Puglinternals_520094269
    handle*: Puglhandle_520094199
    eventfunc*: Pugleventfunc_520094217
    parent*: Puglnativeview_520094197
    transientparent*: uintptrt_520094149
    lastconfigure*: Puglconfigureevent_520094084
    hints*: Puglhints_520094271
    sizehints*: array[6'i64, Puglviewsize_520094279]
    strings*: array[3'i64, cstring]
    defaultx*: cint
    defaulty*: cint
    stage*: Puglviewstage_520094287
    resizing*: bool

  Puglbackend_520094192 = structpuglbackendimpl_520094195 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:917:32
  structpuglbackendimpl_520094194 {.pure, inheritable, bycopy.} = object
    configure*: proc (a0: ptr Puglview_520094189): Puglstatus_520094171 {.cdecl.} ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:83:8
    create*: proc (a0: ptr Puglview_520094189): Puglstatus_520094171 {.cdecl.}
    destroy*: proc (a0: ptr Puglview_520094189): void {.cdecl.}
    enter*: proc (a0: ptr Puglview_520094189; a1: ptr Puglexposeevent_520094096): Puglstatus_520094171 {.
        cdecl.}
    leave*: proc (a0: ptr Puglview_520094189; a1: ptr Puglexposeevent_520094096): Puglstatus_520094171 {.
        cdecl.}
    getcontext*: proc (a0: ptr Puglview_520094189): pointer {.cdecl.}

  Puglnativeview_520094196 = uintptrt_520094149 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:928:19
  Puglhandle_520094198 = pointer ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:931:15
  Puglviewhint_520094202 = enumpuglviewhint_520094201 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:955:3
  # Puglviewhintvalue_520094206 = enumpuglviewhintvalue_520094205 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:969:3
  Puglviewtype_520094210 = enumpuglviewtype_520094209 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:976:3
  Puglsizehint_520094214 = enumpuglsizehint_520094213 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1031:3
  Pugleventfunc_520094216 = proc (a0: ptr Puglview_520094189; a1: ptr Puglevent_520094167): Puglstatus_520094171 {.
      cdecl.}                ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1037:22
  Puglshowcommand_520094220 = enumpuglshowcommand_520094219 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1337:3
  Puglcursor_520094224 = enumpuglcursor_520094223 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1460:3
  Puglcreateevent_520094226 = Puglrealizeevent_520094078 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1659:26
  Pugldestroyevent_520094228 = Puglunrealizeevent_520094080 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1662:28
  Pugleventcreate_520094230 = Puglrealizeevent_520094078 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1665:26
  Pugleventdestroy_520094232 = Puglunrealizeevent_520094080 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1668:28
  Pugleventconfigure_520094234 = Puglconfigureevent_520094084 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1671:28
  Pugleventupdate_520094236 = Puglupdateevent_520094092 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1674:25
  Pugleventexpose_520094238 = Puglexposeevent_520094096 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1677:25
  Pugleventclose_520094240 = Puglcloseevent_520094090 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1680:24
  Pugleventfocus_520094242 = Puglfocusevent_520094110 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1683:24
  Pugleventkey_520094244 = Puglkeyevent_520094114 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1686:22
  Pugleventtext_520094246 = Pugltextevent_520094118 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1689:23
  Pugleventcrossing_520094248 = Puglcrossingevent_520094133 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1692:27
  Pugleventbutton_520094250 = Puglbuttonevent_520094137 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1695:25
  Pugleventmotion_520094252 = Puglmotionevent_520094141 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1698:25
  Pugleventscroll_520094254 = Puglscrollevent_520094145 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1701:25
  Pugleventclient_520094256 = Puglclientevent_520094151 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1704:25
  Pugleventtimer_520094258 = Pugltimerevent_520094155 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1707:24
  Pugleventloopenter_520094260 = Puglloopenterevent_520094086 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1710:28
  Pugleventloopleave_520094262 = Puglloopleaveevent_520094088 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1713:28
  Puglnativewindow_520094264 = uintptrt_520094149 ## Generated based on nim-pugl/src/pugl/pugl_source/src/../include/pugl/pugl.h:1725:19
  Puglworldinternals_520094266 = structpuglworldinternalsimpl ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:16:39
  Puglinternals_520094268 = structpuglinternalsimpl ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:19:34
  Puglhints_520094270 = array[20'i64, cint] ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:22:13
  structpuglpoint_520094272 {.pure, inheritable, bycopy.} = object
    x*: Puglcoord_520094042  ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:25:9
    y*: Puglcoord_520094042

  Puglpoint_520094274 = structpuglpoint_520094273 ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:28:3
  structpuglviewsize_520094276 {.pure, inheritable, bycopy.} = object
    width*: Puglspan_520094044 ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:31:9
    height*: Puglspan_520094044

  Puglviewsize_520094278 = structpuglviewsize_520094277 ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:34:3
  structpuglblob_520094280 {.pure, inheritable, bycopy.} = object
    data*: pointer           ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:37:9
    len*: csize_t

  Puglblob_520094282 = structpuglblob_520094281 ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:40:3
  Puglviewstage_520094286 = enumpuglviewstage_520094285 ## Generated based on nim-pugl/src/pugl/pugl_source/src/types.h:47:3
  Puglanyevent_520094070 = (when declared(Puglanyevent):
    Puglanyevent
   else:
    Puglanyevent_520094069)
  enumpuglviewstage_520094285 = (when declared(enumpuglviewstage):
    enumpuglviewstage
   else:
    enumpuglviewstage_520094284)
  structpuglscrollevent_520094143 = (when declared(structpuglscrollevent):
    structpuglscrollevent
   else:
    structpuglscrollevent_520094142)
  Pugleventcrossing_520094249 = (when declared(Pugleventcrossing):
    Pugleventcrossing
   else:
    Pugleventcrossing_520094248)
  Puglloopleaveevent_520094088 = (when declared(Puglloopleaveevent):
    Puglloopleaveevent
   else:
    Puglloopleaveevent_520094087)
  Pugleventcreate_520094231 = (when declared(Pugleventcreate):
    Pugleventcreate
   else:
    Pugleventcreate_520094230)
  structpuglmotionevent_520094139 = (when declared(structpuglmotionevent):
    structpuglmotionevent
   else:
    structpuglmotionevent_520094138)
  Puglexposeevent_520094096 = (when declared(Puglexposeevent):
    Puglexposeevent
   else:
    Puglexposeevent_520094095)
  Puglrealizeevent_520094078 = (when declared(Puglrealizeevent):
    Puglrealizeevent
   else:
    Puglrealizeevent_520094077)
  Pugltimerevent_520094155 = (when declared(Pugltimerevent):
    Pugltimerevent
   else:
    Pugltimerevent_520094154)
  structpuglfocusevent_520094108 = (when declared(structpuglfocusevent):
    structpuglfocusevent
   else:
    structpuglfocusevent_520094107)
  Puglhandle_520094199 = (when declared(Puglhandle):
    Puglhandle
   else:
    Puglhandle_520094198)
  Pugldataofferevent_520094159 = (when declared(Pugldataofferevent):
    Pugldataofferevent
   else:
    Pugldataofferevent_520094158)
  enumpuglsizehint_520094213 = (when declared(enumpuglsizehint):
    enumpuglsizehint
   else:
    enumpuglsizehint_520094212)
  Pugleventtext_520094247 = (when declared(Pugleventtext):
    Pugleventtext
   else:
    Pugleventtext_520094246)
  structpugltextevent_520094116 = (when declared(structpugltextevent):
    structpugltextevent
   else:
    structpugltextevent_520094115)
  Puglstringhint_520094052 = (when declared(Puglstringhint):
    Puglstringhint
   else:
    Puglstringhint_520094051)
  enumpugleventtype_520094054 = (when declared(enumpugleventtype):
    enumpugleventtype
   else:
    enumpugleventtype_520094053)
  Pugleventfocus_520094243 = (when declared(Pugleventfocus):
    Pugleventfocus
   else:
    Pugleventfocus_520094242)
  Puglview_520094189 = (when declared(Puglview):
    Puglview
   else:
    Puglview_520094188)
  enumpuglstringhint_520094050 = (when declared(enumpuglstringhint):
    enumpuglstringhint
   else:
    enumpuglstringhint_520094049)
  Pugleventtype_520094056 = (when declared(Pugleventtype):
    Pugleventtype
   else:
    Pugleventtype_520094055)
  Puglmod_520094104 = (when declared(Puglmod):
    Puglmod
   else:
    Puglmod_520094103)
  Puglkeyevent_520094114 = (when declared(Puglkeyevent):
    Puglkeyevent
   else:
    Puglkeyevent_520094113)
  Puglviewhint_520094203 = (when declared(Puglviewhint):
    Puglviewhint
   else:
    Puglviewhint_520094202)
  structpuglpoint_520094273 = (when declared(structpuglpoint):
    structpuglpoint
   else:
    structpuglpoint_520094272)
  Puglconfigureevent_520094084 = (when declared(Puglconfigureevent):
    Puglconfigureevent
   else:
    Puglconfigureevent_520094083)
  Pugleventbutton_520094251 = (when declared(Pugleventbutton):
    Pugleventbutton
   else:
    Pugleventbutton_520094250)
  Pugleventloopleave_520094263 = (when declared(Pugleventloopleave):
    Pugleventloopleave
   else:
    Pugleventloopleave_520094262)
  Puglworldinternals_520094267 = (when declared(Puglworldinternals):
    Puglworldinternals
   else:
    Puglworldinternals_520094266)
  Puglclientevent_520094151 = (when declared(Puglclientevent):
    Puglclientevent
   else:
    Puglclientevent_520094150)
  Pugleventconfigure_520094235 = (when declared(Pugleventconfigure):
    Pugleventconfigure
   else:
    Pugleventconfigure_520094234)
  Puglviewsize_520094279 = (when declared(Puglviewsize):
    Puglviewsize
   else:
    Puglviewsize_520094278)
  Puglworld_520094173 = (when declared(Puglworld):
    Puglworld
   else:
    Puglworld_520094172)
  Puglviewtype_520094211 = (when declared(Puglviewtype):
    Puglviewtype
   else:
    Puglviewtype_520094210)
  enumpuglviewstyleflag_520094072 = (when declared(enumpuglviewstyleflag):
    enumpuglviewstyleflag
   else:
    enumpuglviewstyleflag_520094071)
  enumpuglkey_520094098 = (when declared(enumpuglkey):
    enumpuglkey
   else:
    enumpuglkey_520094097)
  Puglnativewindow_520094265 = (when declared(Puglnativewindow):
    Puglnativewindow
   else:
    Puglnativewindow_520094264)
  enumpuglworldflag_520094183 = (when declared(enumpuglworldflag):
    enumpuglworldflag
   else:
    enumpuglworldflag_520094182)
  Pugleventfunc_520094217 = (when declared(Pugleventfunc):
    Pugleventfunc
   else:
    Pugleventfunc_520094216)
  Pugldataevent_520094163 = (when declared(Pugldataevent):
    Pugldataevent
   else:
    Pugldataevent_520094162)
  structpuglexposeevent_520094094 = (when declared(structpuglexposeevent):
    structpuglexposeevent
   else:
    structpuglexposeevent_520094093)
  enumpuglmod_520094102 = (when declared(enumpuglmod):
    enumpuglmod
   else:
    enumpuglmod_520094101)
  structpuglconfigureevent_520094082 = (when declared(structpuglconfigureevent):
    structpuglconfigureevent
   else:
    structpuglconfigureevent_520094081)
  Puglupdateevent_520094092 = (when declared(Puglupdateevent):
    Puglupdateevent
   else:
    Puglupdateevent_520094091)
  Puglloopenterevent_520094086 = (when declared(Puglloopenterevent):
    Puglloopenterevent
   else:
    Puglloopenterevent_520094085)
  enumpugleventflag_520094058 = (when declared(enumpugleventflag):
    enumpugleventflag
   else:
    enumpugleventflag_520094057)
  Puglcloseevent_520094090 = (when declared(Puglcloseevent):
    Puglcloseevent
   else:
    Puglcloseevent_520094089)
  Pugleventupdate_520094237 = (when declared(Pugleventupdate):
    Pugleventupdate
   else:
    Pugleventupdate_520094236)
  enumpuglviewhint_520094201 = (when declared(enumpuglviewhint):
    enumpuglviewhint
   else:
    enumpuglviewhint_520094200)
  Puglstatus_520094171 = (when declared(Puglstatus):
    Puglstatus
   else:
    Puglstatus_520094170)
  Pugleventmotion_520094253 = (when declared(Pugleventmotion):
    Pugleventmotion
   else:
    Pugleventmotion_520094252)
  Puglworldtype_520094181 = (when declared(Puglworldtype):
    Puglworldtype
   else:
    Puglworldtype_520094180)
  Puglcrossingevent_520094133 = (when declared(Puglcrossingevent):
    Puglcrossingevent
   else:
    Puglcrossingevent_520094132)
  structpuglrect_520094046 = (when declared(structpuglrect):
    structpuglrect
   else:
    structpuglrect_520094045)
  Puglworldflags_520094187 = (when declared(Puglworldflags):
    Puglworldflags
   else:
    Puglworldflags_520094186)
  Puglhints_520094271 = (when declared(Puglhints):
    Puglhints
   else:
    Puglhints_520094270)
  enumpuglworldtype_520094179 = (when declared(enumpuglworldtype):
    enumpuglworldtype
   else:
    enumpuglworldtype_520094178)
  Pugleventexpose_520094239 = (when declared(Pugleventexpose):
    Pugleventexpose
   else:
    Pugleventexpose_520094238)
  structpugldataevent_520094161 = (when declared(structpugldataevent):
    structpugldataevent
   else:
    structpugldataevent_520094160)
  enumpuglcrossingmode_520094064 = (when declared(enumpuglcrossingmode):
    enumpuglcrossingmode
   else:
    enumpuglcrossingmode_520094063)
  Puglfocusevent_520094110 = (when declared(Puglfocusevent):
    Puglfocusevent
   else:
    Puglfocusevent_520094109)
  enumpuglstatus_520094169 = (when declared(enumpuglstatus):
    enumpuglstatus
   else:
    enumpuglstatus_520094168)
  structpuglkeyevent_520094112 = (when declared(structpuglkeyevent):
    structpuglkeyevent
   else:
    structpuglkeyevent_520094111)
  Puglcoord_520094042 = (when declared(Puglcoord):
    Puglcoord
   else:
    Puglcoord_520094041)
  structpuglbuttonevent_520094135 = (when declared(structpuglbuttonevent):
    structpuglbuttonevent
   else:
    structpuglbuttonevent_520094134)
  Puglrect_520094048 = (when declared(Puglrect):
    Puglrect
   else:
    Puglrect_520094047)
  Puglunrealizeevent_520094080 = (when declared(Puglunrealizeevent):
    Puglunrealizeevent
   else:
    Puglunrealizeevent_520094079)
  Puglbuttonevent_520094137 = (when declared(Puglbuttonevent):
    Puglbuttonevent
   else:
    Puglbuttonevent_520094136)
  enumpuglscrolldirection_520094127 = (when declared(enumpuglscrolldirection):
    enumpuglscrolldirection
   else:
    enumpuglscrolldirection_520094126)
  structpugldataofferevent_520094157 = (when declared(structpugldataofferevent):
    structpugldataofferevent
   else:
    structpugldataofferevent_520094156)
  Puglmods_520094106 = (when declared(Puglmods):
    Puglmods
   else:
    Puglmods_520094105)
  structpuglviewimpl_520094191 = (when declared(structpuglviewimpl):
    structpuglviewimpl
   else:
    structpuglviewimpl_520094190)
  Puglpoint_520094275 = (when declared(Puglpoint):
    Puglpoint
   else:
    Puglpoint_520094274)
  Puglkey_520094100 = (when declared(Puglkey):
    Puglkey
   else:
    Puglkey_520094099)
  structpuglclientevent_520094147 = (when declared(structpuglclientevent):
    structpuglclientevent
   else:
    structpuglclientevent_520094146)
  Puglblob_520094283 = (when declared(Puglblob):
    Puglblob
   else:
    Puglblob_520094282)
  Puglnativeview_520094197 = (when declared(Puglnativeview):
    Puglnativeview
   else:
    Puglnativeview_520094196)
  Puglshowcommand_520094221 = (when declared(Puglshowcommand):
    Puglshowcommand
   else:
    Puglshowcommand_520094220)
  Puglviewstyleflag_520094074 = (when declared(Puglviewstyleflag):
    Puglviewstyleflag
   else:
    Puglviewstyleflag_520094073)
  Pugleventdestroy_520094233 = (when declared(Pugleventdestroy):
    Pugleventdestroy
   else:
    Pugleventdestroy_520094232)
  Puglworldflag_520094185 = (when declared(Puglworldflag):
    Puglworldflag
   else:
    Puglworldflag_520094184)
  structpuglanyevent_520094068 = (when declared(structpuglanyevent):
    structpuglanyevent
   else:
    structpuglanyevent_520094067)
  Pugleventloopenter_520094261 = (when declared(Pugleventloopenter):
    Pugleventloopenter
   else:
    Pugleventloopenter_520094260)
  Pugleventclient_520094257 = (when declared(Pugleventclient):
    Pugleventclient
   else:
    Pugleventclient_520094256)
  # Puglviewhintvalue_520094207 = (when declared(Puglviewhintvalue):
  #   Puglviewhintvalue
  #  else:
  #   Puglviewhintvalue_520094206)
  Puglcreateevent_520094227 = (when declared(Puglcreateevent):
    Puglcreateevent
   else:
    Puglcreateevent_520094226)
  # enumpuglviewhintvalue_520094205 = (when declared(enumpuglviewhintvalue):
  #   enumpuglviewhintvalue
  #  else:
  #   enumpuglviewhintvalue_520094204)
  structpuglworldimpl_520094175 = (when declared(structpuglworldimpl):
    structpuglworldimpl
   else:
    structpuglworldimpl_520094174)
  Puglspan_520094044 = (when declared(Puglspan):
    Puglspan
   else:
    Puglspan_520094043)
  Puglviewstyleflags_520094076 = (when declared(Puglviewstyleflags):
    Puglviewstyleflags
   else:
    Puglviewstyleflags_520094075)
  Puglevent_520094167 = (when declared(Puglevent):
    Puglevent
   else:
    Puglevent_520094166)
  Pugleventflag_520094060 = (when declared(Pugleventflag):
    Pugleventflag
   else:
    Pugleventflag_520094059)
  Pugleventscroll_520094255 = (when declared(Pugleventscroll):
    Pugleventscroll
   else:
    Pugleventscroll_520094254)
  enumpuglshowcommand_520094219 = (when declared(enumpuglshowcommand):
    enumpuglshowcommand
   else:
    enumpuglshowcommand_520094218)
  enumpuglviewtype_520094209 = (when declared(enumpuglviewtype):
    enumpuglviewtype
   else:
    enumpuglviewtype_520094208)
  structpuglviewsize_520094277 = (when declared(structpuglviewsize):
    structpuglviewsize
   else:
    structpuglviewsize_520094276)
  Pugleventclose_520094241 = (when declared(Pugleventclose):
    Pugleventclose
   else:
    Pugleventclose_520094240)
  enumpuglcursor_520094223 = (when declared(enumpuglcursor):
    enumpuglcursor
   else:
    enumpuglcursor_520094222)
  Pugleventtimer_520094259 = (when declared(Pugleventtimer):
    Pugleventtimer
   else:
    Pugleventtimer_520094258)
  Pugldestroyevent_520094229 = (when declared(Pugldestroyevent):
    Pugldestroyevent
   else:
    Pugldestroyevent_520094228)
  Puglmotionevent_520094141 = (when declared(Puglmotionevent):
    Puglmotionevent
   else:
    Puglmotionevent_520094140)
  Puglinternals_520094269 = (when declared(Puglinternals):
    Puglinternals
   else:
    Puglinternals_520094268)
  Puglworldhandle_520094177 = (when declared(Puglworldhandle):
    Puglworldhandle
   else:
    Puglworldhandle_520094176)
  Puglbackend_520094193 = (when declared(Puglbackend):
    Puglbackend
   else:
    Puglbackend_520094192)
  structpuglcrossingevent_520094131 = (when declared(structpuglcrossingevent):
    structpuglcrossingevent
   else:
    structpuglcrossingevent_520094130)
  Puglcrossingmode_520094066 = (when declared(Puglcrossingmode):
    Puglcrossingmode
   else:
    Puglcrossingmode_520094065)
  unionpuglevent_520094165 = (when declared(unionpuglevent):
    unionpuglevent
   else:
    unionpuglevent_520094164)
  Puglscrollevent_520094145 = (when declared(Puglscrollevent):
    Puglscrollevent
   else:
    Puglscrollevent_520094144)
  Puglsizehint_520094215 = (when declared(Puglsizehint):
    Puglsizehint
   else:
    Puglsizehint_520094214)
  structpuglblob_520094281 = (when declared(structpuglblob):
    structpuglblob
   else:
    structpuglblob_520094280)
  Puglcursor_520094225 = (when declared(Puglcursor):
    Puglcursor
   else:
    Puglcursor_520094224)
  Pugleventflags_520094062 = (when declared(Pugleventflags):
    Pugleventflags
   else:
    Pugleventflags_520094061)
  Puglscrolldirection_520094129 = (when declared(Puglscrolldirection):
    Puglscrolldirection
   else:
    Puglscrolldirection_520094128)
  structpugltimerevent_520094153 = (when declared(structpugltimerevent):
    structpugltimerevent
   else:
    structpugltimerevent_520094152)
  structpuglbackendimpl_520094195 = (when declared(structpuglbackendimpl):
    structpuglbackendimpl
   else:
    structpuglbackendimpl_520094194)
  Pugltextevent_520094118 = (when declared(Pugltextevent):
    Pugltextevent
   else:
    Pugltextevent_520094117)
  Puglviewstage_520094287 = (when declared(Puglviewstage):
    Puglviewstage
   else:
    Puglviewstage_520094286)
  Pugleventkey_520094245 = (when declared(Pugleventkey):
    Pugleventkey
   else:
    Pugleventkey_520094244)
  uintptrt_520094149 = (when declared(uintptrt):
    uintptrt
   else:
    uintptrt_520094148)
when not declared(Puglanyevent):
  type
    Puglanyevent* = Puglanyevent_520094069
else:
  static :
    hint("Declaration of " & "Puglanyevent" & " already exists, not redeclaring")
when not declared(structpuglscrollevent):
  type
    structpuglscrollevent* = structpuglscrollevent_520094142
else:
  static :
    hint("Declaration of " & "structpuglscrollevent" &
        " already exists, not redeclaring")
when not declared(Pugleventcrossing):
  type
    Pugleventcrossing* = Pugleventcrossing_520094248
else:
  static :
    hint("Declaration of " & "Pugleventcrossing" &
        " already exists, not redeclaring")
when not declared(Puglloopleaveevent):
  type
    Puglloopleaveevent* = Puglloopleaveevent_520094087
else:
  static :
    hint("Declaration of " & "Puglloopleaveevent" &
        " already exists, not redeclaring")
when not declared(Pugleventcreate):
  type
    Pugleventcreate* = Pugleventcreate_520094230
else:
  static :
    hint("Declaration of " & "Pugleventcreate" &
        " already exists, not redeclaring")
when not declared(structpuglmotionevent):
  type
    structpuglmotionevent* = structpuglmotionevent_520094138
else:
  static :
    hint("Declaration of " & "structpuglmotionevent" &
        " already exists, not redeclaring")
when not declared(Puglexposeevent):
  type
    Puglexposeevent* = Puglexposeevent_520094095
else:
  static :
    hint("Declaration of " & "Puglexposeevent" &
        " already exists, not redeclaring")
when not declared(Puglrealizeevent):
  type
    Puglrealizeevent* = Puglrealizeevent_520094077
else:
  static :
    hint("Declaration of " & "Puglrealizeevent" &
        " already exists, not redeclaring")
when not declared(Pugltimerevent):
  type
    Pugltimerevent* = Pugltimerevent_520094154
else:
  static :
    hint("Declaration of " & "Pugltimerevent" &
        " already exists, not redeclaring")
when not declared(structpuglfocusevent):
  type
    structpuglfocusevent* = structpuglfocusevent_520094107
else:
  static :
    hint("Declaration of " & "structpuglfocusevent" &
        " already exists, not redeclaring")
when not declared(Puglhandle):
  type
    Puglhandle* = Puglhandle_520094198
else:
  static :
    hint("Declaration of " & "Puglhandle" & " already exists, not redeclaring")
when not declared(Pugldataofferevent):
  type
    Pugldataofferevent* = Pugldataofferevent_520094158
else:
  static :
    hint("Declaration of " & "Pugldataofferevent" &
        " already exists, not redeclaring")
when not declared(Pugleventtext):
  type
    Pugleventtext* = Pugleventtext_520094246
else:
  static :
    hint("Declaration of " & "Pugleventtext" &
        " already exists, not redeclaring")
when not declared(structpugltextevent):
  type
    structpugltextevent* = structpugltextevent_520094115
else:
  static :
    hint("Declaration of " & "structpugltextevent" &
        " already exists, not redeclaring")
when not declared(Puglstringhint):
  type
    Puglstringhint* = Puglstringhint_520094051
else:
  static :
    hint("Declaration of " & "Puglstringhint" &
        " already exists, not redeclaring")
when not declared(Pugleventfocus):
  type
    Pugleventfocus* = Pugleventfocus_520094242
else:
  static :
    hint("Declaration of " & "Pugleventfocus" &
        " already exists, not redeclaring")
when not declared(Puglview):
  type
    Puglview* = Puglview_520094188
else:
  static :
    hint("Declaration of " & "Puglview" & " already exists, not redeclaring")
when not declared(Pugleventtype):
  type
    Pugleventtype* = Pugleventtype_520094055
else:
  static :
    hint("Declaration of " & "Pugleventtype" &
        " already exists, not redeclaring")
when not declared(Puglmod):
  type
    Puglmod* = Puglmod_520094103
else:
  static :
    hint("Declaration of " & "Puglmod" & " already exists, not redeclaring")
when not declared(Puglkeyevent):
  type
    Puglkeyevent* = Puglkeyevent_520094113
else:
  static :
    hint("Declaration of " & "Puglkeyevent" & " already exists, not redeclaring")
when not declared(Puglviewhint):
  type
    Puglviewhint* = Puglviewhint_520094202
else:
  static :
    hint("Declaration of " & "Puglviewhint" & " already exists, not redeclaring")
when not declared(structpuglpoint):
  type
    structpuglpoint* = structpuglpoint_520094272
else:
  static :
    hint("Declaration of " & "structpuglpoint" &
        " already exists, not redeclaring")
when not declared(Puglconfigureevent):
  type
    Puglconfigureevent* = Puglconfigureevent_520094083
else:
  static :
    hint("Declaration of " & "Puglconfigureevent" &
        " already exists, not redeclaring")
when not declared(Pugleventbutton):
  type
    Pugleventbutton* = Pugleventbutton_520094250
else:
  static :
    hint("Declaration of " & "Pugleventbutton" &
        " already exists, not redeclaring")
when not declared(Pugleventloopleave):
  type
    Pugleventloopleave* = Pugleventloopleave_520094262
else:
  static :
    hint("Declaration of " & "Pugleventloopleave" &
        " already exists, not redeclaring")
when not declared(Puglworldinternals):
  type
    Puglworldinternals* = Puglworldinternals_520094266
else:
  static :
    hint("Declaration of " & "Puglworldinternals" &
        " already exists, not redeclaring")
when not declared(Puglclientevent):
  type
    Puglclientevent* = Puglclientevent_520094150
else:
  static :
    hint("Declaration of " & "Puglclientevent" &
        " already exists, not redeclaring")
when not declared(Pugleventconfigure):
  type
    Pugleventconfigure* = Pugleventconfigure_520094234
else:
  static :
    hint("Declaration of " & "Pugleventconfigure" &
        " already exists, not redeclaring")
when not declared(Puglviewsize):
  type
    Puglviewsize* = Puglviewsize_520094278
else:
  static :
    hint("Declaration of " & "Puglviewsize" & " already exists, not redeclaring")
when not declared(Puglworld):
  type
    Puglworld* = Puglworld_520094172
else:
  static :
    hint("Declaration of " & "Puglworld" & " already exists, not redeclaring")
when not declared(Puglviewtype):
  type
    Puglviewtype* = Puglviewtype_520094210
else:
  static :
    hint("Declaration of " & "Puglviewtype" & " already exists, not redeclaring")
when not declared(Puglnativewindow):
  type
    Puglnativewindow* = Puglnativewindow_520094264
else:
  static :
    hint("Declaration of " & "Puglnativewindow" &
        " already exists, not redeclaring")
when not declared(Pugleventfunc):
  type
    Pugleventfunc* = Pugleventfunc_520094216
else:
  static :
    hint("Declaration of " & "Pugleventfunc" &
        " already exists, not redeclaring")
when not declared(Pugldataevent):
  type
    Pugldataevent* = Pugldataevent_520094162
else:
  static :
    hint("Declaration of " & "Pugldataevent" &
        " already exists, not redeclaring")
when not declared(structpuglexposeevent):
  type
    structpuglexposeevent* = structpuglexposeevent_520094093
else:
  static :
    hint("Declaration of " & "structpuglexposeevent" &
        " already exists, not redeclaring")
when not declared(structpuglconfigureevent):
  type
    structpuglconfigureevent* = structpuglconfigureevent_520094081
else:
  static :
    hint("Declaration of " & "structpuglconfigureevent" &
        " already exists, not redeclaring")
when not declared(Puglupdateevent):
  type
    Puglupdateevent* = Puglupdateevent_520094091
else:
  static :
    hint("Declaration of " & "Puglupdateevent" &
        " already exists, not redeclaring")
when not declared(Puglloopenterevent):
  type
    Puglloopenterevent* = Puglloopenterevent_520094085
else:
  static :
    hint("Declaration of " & "Puglloopenterevent" &
        " already exists, not redeclaring")
when not declared(Puglcloseevent):
  type
    Puglcloseevent* = Puglcloseevent_520094089
else:
  static :
    hint("Declaration of " & "Puglcloseevent" &
        " already exists, not redeclaring")
when not declared(Pugleventupdate):
  type
    Pugleventupdate* = Pugleventupdate_520094236
else:
  static :
    hint("Declaration of " & "Pugleventupdate" &
        " already exists, not redeclaring")
when not declared(Puglstatus):
  type
    Puglstatus* = Puglstatus_520094170
else:
  static :
    hint("Declaration of " & "Puglstatus" & " already exists, not redeclaring")
when not declared(Pugleventmotion):
  type
    Pugleventmotion* = Pugleventmotion_520094252
else:
  static :
    hint("Declaration of " & "Pugleventmotion" &
        " already exists, not redeclaring")
when not declared(Puglworldtype):
  type
    Puglworldtype* = Puglworldtype_520094180
else:
  static :
    hint("Declaration of " & "Puglworldtype" &
        " already exists, not redeclaring")
when not declared(Puglcrossingevent):
  type
    Puglcrossingevent* = Puglcrossingevent_520094132
else:
  static :
    hint("Declaration of " & "Puglcrossingevent" &
        " already exists, not redeclaring")
when not declared(structpuglrect):
  type
    structpuglrect* = structpuglrect_520094045
else:
  static :
    hint("Declaration of " & "structpuglrect" &
        " already exists, not redeclaring")
when not declared(Puglworldflags):
  type
    Puglworldflags* = Puglworldflags_520094186
else:
  static :
    hint("Declaration of " & "Puglworldflags" &
        " already exists, not redeclaring")
when not declared(Puglhints):
  type
    Puglhints* = Puglhints_520094270
else:
  static :
    hint("Declaration of " & "Puglhints" & " already exists, not redeclaring")
when not declared(Pugleventexpose):
  type
    Pugleventexpose* = Pugleventexpose_520094238
else:
  static :
    hint("Declaration of " & "Pugleventexpose" &
        " already exists, not redeclaring")
when not declared(structpugldataevent):
  type
    structpugldataevent* = structpugldataevent_520094160
else:
  static :
    hint("Declaration of " & "structpugldataevent" &
        " already exists, not redeclaring")
when not declared(Puglfocusevent):
  type
    Puglfocusevent* = Puglfocusevent_520094109
else:
  static :
    hint("Declaration of " & "Puglfocusevent" &
        " already exists, not redeclaring")
when not declared(structpuglkeyevent):
  type
    structpuglkeyevent* = structpuglkeyevent_520094111
else:
  static :
    hint("Declaration of " & "structpuglkeyevent" &
        " already exists, not redeclaring")
when not declared(Puglcoord):
  type
    Puglcoord* = Puglcoord_520094041
else:
  static :
    hint("Declaration of " & "Puglcoord" & " already exists, not redeclaring")
when not declared(structpuglbuttonevent):
  type
    structpuglbuttonevent* = structpuglbuttonevent_520094134
else:
  static :
    hint("Declaration of " & "structpuglbuttonevent" &
        " already exists, not redeclaring")
when not declared(Puglrect):
  type
    Puglrect* = Puglrect_520094047
else:
  static :
    hint("Declaration of " & "Puglrect" & " already exists, not redeclaring")
when not declared(Puglunrealizeevent):
  type
    Puglunrealizeevent* = Puglunrealizeevent_520094079
else:
  static :
    hint("Declaration of " & "Puglunrealizeevent" &
        " already exists, not redeclaring")
when not declared(Puglbuttonevent):
  type
    Puglbuttonevent* = Puglbuttonevent_520094136
else:
  static :
    hint("Declaration of " & "Puglbuttonevent" &
        " already exists, not redeclaring")
when not declared(structpugldataofferevent):
  type
    structpugldataofferevent* = structpugldataofferevent_520094156
else:
  static :
    hint("Declaration of " & "structpugldataofferevent" &
        " already exists, not redeclaring")
when not declared(Puglmods):
  type
    Puglmods* = Puglmods_520094105
else:
  static :
    hint("Declaration of " & "Puglmods" & " already exists, not redeclaring")
when not declared(structpuglviewimpl):
  type
    structpuglviewimpl* = structpuglviewimpl_520094190
else:
  static :
    hint("Declaration of " & "structpuglviewimpl" &
        " already exists, not redeclaring")
when not declared(Puglpoint):
  type
    Puglpoint* = Puglpoint_520094274
else:
  static :
    hint("Declaration of " & "Puglpoint" & " already exists, not redeclaring")
when not declared(Puglkey):
  type
    Puglkey* = Puglkey_520094099
else:
  static :
    hint("Declaration of " & "Puglkey" & " already exists, not redeclaring")
when not declared(structpuglclientevent):
  type
    structpuglclientevent* = structpuglclientevent_520094146
else:
  static :
    hint("Declaration of " & "structpuglclientevent" &
        " already exists, not redeclaring")
when not declared(Puglblob):
  type
    Puglblob* = Puglblob_520094282
else:
  static :
    hint("Declaration of " & "Puglblob" & " already exists, not redeclaring")
when not declared(Puglnativeview):
  type
    Puglnativeview* = Puglnativeview_520094196
else:
  static :
    hint("Declaration of " & "Puglnativeview" &
        " already exists, not redeclaring")
when not declared(Puglshowcommand):
  type
    Puglshowcommand* = Puglshowcommand_520094220
else:
  static :
    hint("Declaration of " & "Puglshowcommand" &
        " already exists, not redeclaring")
when not declared(Puglviewstyleflag):
  type
    Puglviewstyleflag* = Puglviewstyleflag_520094073
else:
  static :
    hint("Declaration of " & "Puglviewstyleflag" &
        " already exists, not redeclaring")
when not declared(Pugleventdestroy):
  type
    Pugleventdestroy* = Pugleventdestroy_520094232
else:
  static :
    hint("Declaration of " & "Pugleventdestroy" &
        " already exists, not redeclaring")
when not declared(Puglworldflag):
  type
    Puglworldflag* = Puglworldflag_520094184
else:
  static :
    hint("Declaration of " & "Puglworldflag" &
        " already exists, not redeclaring")
when not declared(structpuglanyevent):
  type
    structpuglanyevent* = structpuglanyevent_520094067
else:
  static :
    hint("Declaration of " & "structpuglanyevent" &
        " already exists, not redeclaring")
when not declared(Pugleventloopenter):
  type
    Pugleventloopenter* = Pugleventloopenter_520094260
else:
  static :
    hint("Declaration of " & "Pugleventloopenter" &
        " already exists, not redeclaring")
when not declared(Pugleventclient):
  type
    Pugleventclient* = Pugleventclient_520094256
else:
  static :
    hint("Declaration of " & "Pugleventclient" &
        " already exists, not redeclaring")
# when not declared(Puglviewhintvalue):
#   type
#     Puglviewhintvalue* = Puglviewhintvalue_520094206
# else:
#   static :
#     hint("Declaration of " & "Puglviewhintvalue" &
#         " already exists, not redeclaring")
when not declared(Puglcreateevent):
  type
    Puglcreateevent* = Puglcreateevent_520094226
else:
  static :
    hint("Declaration of " & "Puglcreateevent" &
        " already exists, not redeclaring")
when not declared(structpuglworldimpl):
  type
    structpuglworldimpl* = structpuglworldimpl_520094174
else:
  static :
    hint("Declaration of " & "structpuglworldimpl" &
        " already exists, not redeclaring")
when not declared(Puglspan):
  type
    Puglspan* = Puglspan_520094043
else:
  static :
    hint("Declaration of " & "Puglspan" & " already exists, not redeclaring")
when not declared(Puglviewstyleflags):
  type
    Puglviewstyleflags* = Puglviewstyleflags_520094075
else:
  static :
    hint("Declaration of " & "Puglviewstyleflags" &
        " already exists, not redeclaring")
when not declared(Puglevent):
  type
    Puglevent* = Puglevent_520094166
else:
  static :
    hint("Declaration of " & "Puglevent" & " already exists, not redeclaring")
when not declared(Pugleventflag):
  type
    Pugleventflag* = Pugleventflag_520094059
else:
  static :
    hint("Declaration of " & "Pugleventflag" &
        " already exists, not redeclaring")
when not declared(Pugleventscroll):
  type
    Pugleventscroll* = Pugleventscroll_520094254
else:
  static :
    hint("Declaration of " & "Pugleventscroll" &
        " already exists, not redeclaring")
when not declared(structpuglviewsize):
  type
    structpuglviewsize* = structpuglviewsize_520094276
else:
  static :
    hint("Declaration of " & "structpuglviewsize" &
        " already exists, not redeclaring")
when not declared(Pugleventclose):
  type
    Pugleventclose* = Pugleventclose_520094240
else:
  static :
    hint("Declaration of " & "Pugleventclose" &
        " already exists, not redeclaring")
when not declared(Pugleventtimer):
  type
    Pugleventtimer* = Pugleventtimer_520094258
else:
  static :
    hint("Declaration of " & "Pugleventtimer" &
        " already exists, not redeclaring")
when not declared(Pugldestroyevent):
  type
    Pugldestroyevent* = Pugldestroyevent_520094228
else:
  static :
    hint("Declaration of " & "Pugldestroyevent" &
        " already exists, not redeclaring")
when not declared(Puglmotionevent):
  type
    Puglmotionevent* = Puglmotionevent_520094140
else:
  static :
    hint("Declaration of " & "Puglmotionevent" &
        " already exists, not redeclaring")
when not declared(Puglinternals):
  type
    Puglinternals* = Puglinternals_520094268
else:
  static :
    hint("Declaration of " & "Puglinternals" &
        " already exists, not redeclaring")
when not declared(Puglworldhandle):
  type
    Puglworldhandle* = Puglworldhandle_520094176
else:
  static :
    hint("Declaration of " & "Puglworldhandle" &
        " already exists, not redeclaring")
when not declared(Puglbackend):
  type
    Puglbackend* = Puglbackend_520094192
else:
  static :
    hint("Declaration of " & "Puglbackend" & " already exists, not redeclaring")
when not declared(structpuglcrossingevent):
  type
    structpuglcrossingevent* = structpuglcrossingevent_520094130
else:
  static :
    hint("Declaration of " & "structpuglcrossingevent" &
        " already exists, not redeclaring")
when not declared(Puglcrossingmode):
  type
    Puglcrossingmode* = Puglcrossingmode_520094065
else:
  static :
    hint("Declaration of " & "Puglcrossingmode" &
        " already exists, not redeclaring")
when not declared(unionpuglevent):
  type
    unionpuglevent* = unionpuglevent_520094164
else:
  static :
    hint("Declaration of " & "unionpuglevent" &
        " already exists, not redeclaring")
when not declared(Puglscrollevent):
  type
    Puglscrollevent* = Puglscrollevent_520094144
else:
  static :
    hint("Declaration of " & "Puglscrollevent" &
        " already exists, not redeclaring")
when not declared(Puglsizehint):
  type
    Puglsizehint* = Puglsizehint_520094214
else:
  static :
    hint("Declaration of " & "Puglsizehint" & " already exists, not redeclaring")
when not declared(structpuglblob):
  type
    structpuglblob* = structpuglblob_520094280
else:
  static :
    hint("Declaration of " & "structpuglblob" &
        " already exists, not redeclaring")
when not declared(Puglcursor):
  type
    Puglcursor* = Puglcursor_520094224
else:
  static :
    hint("Declaration of " & "Puglcursor" & " already exists, not redeclaring")
when not declared(Pugleventflags):
  type
    Pugleventflags* = Pugleventflags_520094061
else:
  static :
    hint("Declaration of " & "Pugleventflags" &
        " already exists, not redeclaring")
when not declared(Puglscrolldirection):
  type
    Puglscrolldirection* = Puglscrolldirection_520094128
else:
  static :
    hint("Declaration of " & "Puglscrolldirection" &
        " already exists, not redeclaring")
when not declared(structpugltimerevent):
  type
    structpugltimerevent* = structpugltimerevent_520094152
else:
  static :
    hint("Declaration of " & "structpugltimerevent" &
        " already exists, not redeclaring")
when not declared(structpuglbackendimpl):
  type
    structpuglbackendimpl* = structpuglbackendimpl_520094194
else:
  static :
    hint("Declaration of " & "structpuglbackendimpl" &
        " already exists, not redeclaring")
when not declared(Pugltextevent):
  type
    Pugltextevent* = Pugltextevent_520094117
else:
  static :
    hint("Declaration of " & "Pugltextevent" &
        " already exists, not redeclaring")
when not declared(Puglviewstage):
  type
    Puglviewstage* = Puglviewstage_520094286
else:
  static :
    hint("Declaration of " & "Puglviewstage" &
        " already exists, not redeclaring")
when not declared(Pugleventkey):
  type
    Pugleventkey* = Pugleventkey_520094244
else:
  static :
    hint("Declaration of " & "Pugleventkey" & " already exists, not redeclaring")
when not declared(uintptrt):
  type
    uintptrt* = uintptrt_520094148
else:
  static :
    hint("Declaration of " & "uintptrt" & " already exists, not redeclaring")
when not declared(puglstrerror):
  proc puglstrerror*(status: Puglstatus_520094171): cstring {.cdecl,
      importc: "puglStrerror".}
else:
  static :
    hint("Declaration of " & "puglstrerror" & " already exists, not redeclaring")
when not declared(puglnewworld):
  proc puglnewworld*(typearg: Puglworldtype_520094181; flags: Puglworldflags_520094187): ptr Puglworld_520094173 {.
      cdecl, importc: "puglNewWorld".}
else:
  static :
    hint("Declaration of " & "puglnewworld" & " already exists, not redeclaring")
when not declared(puglfreeworld):
  proc puglfreeworld*(world: ptr Puglworld_520094173): void {.cdecl,
      importc: "puglFreeWorld".}
else:
  static :
    hint("Declaration of " & "puglfreeworld" &
        " already exists, not redeclaring")
when not declared(puglsetworldhandle):
  proc puglsetworldhandle*(world: ptr Puglworld_520094173;
                           handle: Puglworldhandle_520094177): void {.cdecl,
      importc: "puglSetWorldHandle".}
else:
  static :
    hint("Declaration of " & "puglsetworldhandle" &
        " already exists, not redeclaring")
when not declared(puglgetworldhandle):
  proc puglgetworldhandle*(world: ptr Puglworld_520094173): Puglworldhandle_520094177 {.
      cdecl, importc: "puglGetWorldHandle".}
else:
  static :
    hint("Declaration of " & "puglgetworldhandle" &
        " already exists, not redeclaring")
when not declared(puglgetnativeworld):
  proc puglgetnativeworld*(world: ptr Puglworld_520094173): pointer {.cdecl,
      importc: "puglGetNativeWorld".}
else:
  static :
    hint("Declaration of " & "puglgetnativeworld" &
        " already exists, not redeclaring")
when not declared(puglsetworldstring):
  proc puglsetworldstring*(world: ptr Puglworld_520094173; key: Puglstringhint_520094052;
                           value: cstring): Puglstatus_520094171 {.cdecl,
      importc: "puglSetWorldString".}
else:
  static :
    hint("Declaration of " & "puglsetworldstring" &
        " already exists, not redeclaring")
when not declared(puglgetworldstring):
  proc puglgetworldstring*(world: ptr Puglworld_520094173; key: Puglstringhint_520094052): cstring {.
      cdecl, importc: "puglGetWorldString".}
else:
  static :
    hint("Declaration of " & "puglgetworldstring" &
        " already exists, not redeclaring")
when not declared(puglgettime):
  proc puglgettime*(world: ptr Puglworld_520094173): cdouble {.cdecl,
      importc: "puglGetTime".}
else:
  static :
    hint("Declaration of " & "puglgettime" & " already exists, not redeclaring")
when not declared(puglupdate):
  proc puglupdate*(world: ptr Puglworld_520094173; timeout: cdouble): Puglstatus_520094171 {.
      cdecl, importc: "puglUpdate".}
else:
  static :
    hint("Declaration of " & "puglupdate" & " already exists, not redeclaring")
when not declared(puglnewview):
  proc puglnewview*(world: ptr Puglworld_520094173): ptr Puglview_520094189 {.
      cdecl, importc: "puglNewView".}
else:
  static :
    hint("Declaration of " & "puglnewview" & " already exists, not redeclaring")
when not declared(puglfreeview):
  proc puglfreeview*(view: ptr Puglview_520094189): void {.cdecl,
      importc: "puglFreeView".}
else:
  static :
    hint("Declaration of " & "puglfreeview" & " already exists, not redeclaring")
when not declared(puglgetworld):
  proc puglgetworld*(view: ptr Puglview_520094189): ptr Puglworld_520094173 {.
      cdecl, importc: "puglGetWorld".}
else:
  static :
    hint("Declaration of " & "puglgetworld" & " already exists, not redeclaring")
when not declared(puglsethandle):
  proc puglsethandle*(view: ptr Puglview_520094189; handle: Puglhandle_520094199): void {.
      cdecl, importc: "puglSetHandle".}
else:
  static :
    hint("Declaration of " & "puglsethandle" &
        " already exists, not redeclaring")
when not declared(puglgethandle):
  proc puglgethandle*(view: ptr Puglview_520094189): Puglhandle_520094199 {.
      cdecl, importc: "puglGetHandle".}
else:
  static :
    hint("Declaration of " & "puglgethandle" &
        " already exists, not redeclaring")
when not declared(puglsetbackend):
  proc puglsetbackend*(view: ptr Puglview_520094189; backend: ptr Puglbackend_520094193): Puglstatus_520094171 {.
      cdecl, importc: "puglSetBackend".}
else:
  static :
    hint("Declaration of " & "puglsetbackend" &
        " already exists, not redeclaring")
when not declared(puglgetbackend):
  proc puglgetbackend*(view: ptr Puglview_520094189): ptr Puglbackend_520094193 {.
      cdecl, importc: "puglGetBackend".}
else:
  static :
    hint("Declaration of " & "puglgetbackend" &
        " already exists, not redeclaring")
when not declared(puglseteventfunc):
  proc puglseteventfunc*(view: ptr Puglview_520094189; eventfunc: Pugleventfunc_520094217): Puglstatus_520094171 {.
      cdecl, importc: "puglSetEventFunc".}
else:
  static :
    hint("Declaration of " & "puglseteventfunc" &
        " already exists, not redeclaring")
when not declared(puglsetviewhint):
  proc puglsetviewhint*(view: ptr Puglview_520094189; hint: Puglviewhint_520094203;
                        value: cint): Puglstatus_520094171 {.cdecl,
      importc: "puglSetViewHint".}
else:
  static :
    hint("Declaration of " & "puglsetviewhint" &
        " already exists, not redeclaring")
when not declared(puglgetviewhint):
  proc puglgetviewhint*(view: ptr Puglview_520094189; hint: Puglviewhint_520094203): cint {.
      cdecl, importc: "puglGetViewHint".}
else:
  static :
    hint("Declaration of " & "puglgetviewhint" &
        " already exists, not redeclaring")
when not declared(puglsetviewstring):
  proc puglsetviewstring*(view: ptr Puglview_520094189; key: Puglstringhint_520094052;
                          value: cstring): Puglstatus_520094171 {.cdecl,
      importc: "puglSetViewString".}
else:
  static :
    hint("Declaration of " & "puglsetviewstring" &
        " already exists, not redeclaring")
when not declared(puglgetviewstring):
  proc puglgetviewstring*(view: ptr Puglview_520094189; key: Puglstringhint_520094052): cstring {.
      cdecl, importc: "puglGetViewString".}
else:
  static :
    hint("Declaration of " & "puglgetviewstring" &
        " already exists, not redeclaring")
when not declared(puglgetscalefactor):
  proc puglgetscalefactor*(view: ptr Puglview_520094189): cdouble {.cdecl,
      importc: "puglGetScaleFactor".}
else:
  static :
    hint("Declaration of " & "puglgetscalefactor" &
        " already exists, not redeclaring")
when not declared(puglgetframe):
  proc puglgetframe*(view: ptr Puglview_520094189): Puglrect_520094048 {.cdecl,
      importc: "puglGetFrame".}
else:
  static :
    hint("Declaration of " & "puglgetframe" & " already exists, not redeclaring")
when not declared(puglsetframe):
  proc puglsetframe*(view: ptr Puglview_520094189; frame: Puglrect_520094048): Puglstatus_520094171 {.
      cdecl, importc: "puglSetFrame".}
else:
  static :
    hint("Declaration of " & "puglsetframe" & " already exists, not redeclaring")
when not declared(puglsetposition):
  proc puglsetposition*(view: ptr Puglview_520094189; x: cint; y: cint): Puglstatus_520094171 {.
      cdecl, importc: "puglSetPosition".}
else:
  static :
    hint("Declaration of " & "puglsetposition" &
        " already exists, not redeclaring")
when not declared(puglsetsize):
  proc puglsetsize*(view: ptr Puglview_520094189; width: cuint; height: cuint): Puglstatus_520094171 {.
      cdecl, importc: "puglSetSize".}
else:
  static :
    hint("Declaration of " & "puglsetsize" & " already exists, not redeclaring")
when not declared(puglsetsizehint):
  proc puglsetsizehint*(view: ptr Puglview_520094189; hint: Puglsizehint_520094215;
                        width: Puglspan_520094044; height: Puglspan_520094044): Puglstatus_520094171 {.
      cdecl, importc: "puglSetSizeHint".}
else:
  static :
    hint("Declaration of " & "puglsetsizehint" &
        " already exists, not redeclaring")
when not declared(puglsetparentwindow):
  proc puglsetparentwindow*(view: ptr Puglview_520094189; parent: Puglnativeview_520094197): Puglstatus_520094171 {.
      cdecl, importc: "puglSetParentWindow".}
else:
  static :
    hint("Declaration of " & "puglsetparentwindow" &
        " already exists, not redeclaring")
when not declared(puglgetparentwindow):
  proc puglgetparentwindow*(view: ptr Puglview_520094189): Puglnativeview_520094197 {.
      cdecl, importc: "puglGetParentWindow".}
else:
  static :
    hint("Declaration of " & "puglgetparentwindow" &
        " already exists, not redeclaring")
when not declared(puglsettransientparent):
  proc puglsettransientparent*(view: ptr Puglview_520094189;
                               parent: Puglnativeview_520094197): Puglstatus_520094171 {.
      cdecl, importc: "puglSetTransientParent".}
else:
  static :
    hint("Declaration of " & "puglsettransientparent" &
        " already exists, not redeclaring")
when not declared(puglgettransientparent):
  proc puglgettransientparent*(view: ptr Puglview_520094189): Puglnativeview_520094197 {.
      cdecl, importc: "puglGetTransientParent".}
else:
  static :
    hint("Declaration of " & "puglgettransientparent" &
        " already exists, not redeclaring")
when not declared(puglrealize):
  proc puglrealize*(view: ptr Puglview_520094189): Puglstatus_520094171 {.cdecl,
      importc: "puglRealize".}
else:
  static :
    hint("Declaration of " & "puglrealize" & " already exists, not redeclaring")
when not declared(puglunrealize):
  proc puglunrealize*(view: ptr Puglview_520094189): Puglstatus_520094171 {.
      cdecl, importc: "puglUnrealize".}
else:
  static :
    hint("Declaration of " & "puglunrealize" &
        " already exists, not redeclaring")
when not declared(puglshow):
  proc puglshow*(view: ptr Puglview_520094189; command: Puglshowcommand_520094221): Puglstatus_520094171 {.
      cdecl, importc: "puglShow".}
else:
  static :
    hint("Declaration of " & "puglshow" & " already exists, not redeclaring")
when not declared(puglhide):
  proc puglhide*(view: ptr Puglview_520094189): Puglstatus_520094171 {.cdecl,
      importc: "puglHide".}
else:
  static :
    hint("Declaration of " & "puglhide" & " already exists, not redeclaring")
when not declared(puglsetviewstyle):
  proc puglsetviewstyle*(view: ptr Puglview_520094189; flags: Puglviewstyleflags_520094076): Puglstatus_520094171 {.
      cdecl, importc: "puglSetViewStyle".}
else:
  static :
    hint("Declaration of " & "puglsetviewstyle" &
        " already exists, not redeclaring")
when not declared(puglgetviewstyle):
  proc puglgetviewstyle*(view: ptr Puglview_520094189): Puglviewstyleflags_520094076 {.
      cdecl, importc: "puglGetViewStyle".}
else:
  static :
    hint("Declaration of " & "puglgetviewstyle" &
        " already exists, not redeclaring")
when not declared(puglgetvisible):
  proc puglgetvisible*(view: ptr Puglview_520094189): bool {.cdecl,
      importc: "puglGetVisible".}
else:
  static :
    hint("Declaration of " & "puglgetvisible" &
        " already exists, not redeclaring")
when not declared(puglgetnativeview):
  proc puglgetnativeview*(view: ptr Puglview_520094189): Puglnativeview_520094197 {.
      cdecl, importc: "puglGetNativeView".}
else:
  static :
    hint("Declaration of " & "puglgetnativeview" &
        " already exists, not redeclaring")
when not declared(puglgetcontext):
  proc puglgetcontext*(view: ptr Puglview_520094189): pointer {.cdecl,
      importc: "puglGetContext".}
else:
  static :
    hint("Declaration of " & "puglgetcontext" &
        " already exists, not redeclaring")
when not declared(puglpostredisplay):
  proc puglpostredisplay*(view: ptr Puglview_520094189): Puglstatus_520094171 {.
      cdecl, importc: "puglPostRedisplay".}
else:
  static :
    hint("Declaration of " & "puglpostredisplay" &
        " already exists, not redeclaring")
when not declared(puglpostredisplayrect):
  proc puglpostredisplayrect*(view: ptr Puglview_520094189; rect: Puglrect_520094048): Puglstatus_520094171 {.
      cdecl, importc: "puglPostRedisplayRect".}
else:
  static :
    hint("Declaration of " & "puglpostredisplayrect" &
        " already exists, not redeclaring")
when not declared(puglgrabfocus):
  proc puglgrabfocus*(view: ptr Puglview_520094189): Puglstatus_520094171 {.
      cdecl, importc: "puglGrabFocus".}
else:
  static :
    hint("Declaration of " & "puglgrabfocus" &
        " already exists, not redeclaring")
when not declared(puglhasfocus):
  proc puglhasfocus*(view: ptr Puglview_520094189): bool {.cdecl,
      importc: "puglHasFocus".}
else:
  static :
    hint("Declaration of " & "puglhasfocus" & " already exists, not redeclaring")
when not declared(puglpaste):
  proc puglpaste*(view: ptr Puglview_520094189): Puglstatus_520094171 {.cdecl,
      importc: "puglPaste".}
else:
  static :
    hint("Declaration of " & "puglpaste" & " already exists, not redeclaring")
when not declared(puglgetnumclipboardtypes):
  proc puglgetnumclipboardtypes*(view: ptr Puglview_520094189): uint32 {.cdecl,
      importc: "puglGetNumClipboardTypes".}
else:
  static :
    hint("Declaration of " & "puglgetnumclipboardtypes" &
        " already exists, not redeclaring")
when not declared(puglgetclipboardtype):
  proc puglgetclipboardtype*(view: ptr Puglview_520094189; typeindex: uint32): cstring {.
      cdecl, importc: "puglGetClipboardType".}
else:
  static :
    hint("Declaration of " & "puglgetclipboardtype" &
        " already exists, not redeclaring")
when not declared(puglacceptoffer):
  proc puglacceptoffer*(view: ptr Puglview_520094189;
                        offer: ptr Pugldataofferevent_520094159;
                        typeindex: uint32): Puglstatus_520094171 {.cdecl,
      importc: "puglAcceptOffer".}
else:
  static :
    hint("Declaration of " & "puglacceptoffer" &
        " already exists, not redeclaring")
when not declared(puglsetclipboard):
  proc puglsetclipboard*(view: ptr Puglview_520094189; typearg: cstring;
                         data: pointer; len: csize_t): Puglstatus_520094171 {.
      cdecl, importc: "puglSetClipboard".}
else:
  static :
    hint("Declaration of " & "puglsetclipboard" &
        " already exists, not redeclaring")
when not declared(puglgetclipboard):
  proc puglgetclipboard*(view: ptr Puglview_520094189; typeindex: uint32;
                         len: ptr csize_t): pointer {.cdecl,
      importc: "puglGetClipboard".}
else:
  static :
    hint("Declaration of " & "puglgetclipboard" &
        " already exists, not redeclaring")
when not declared(puglsetcursor):
  proc puglsetcursor*(view: ptr Puglview_520094189; cursor: Puglcursor_520094225): Puglstatus_520094171 {.
      cdecl, importc: "puglSetCursor".}
else:
  static :
    hint("Declaration of " & "puglsetcursor" &
        " already exists, not redeclaring")
when not declared(puglstarttimer):
  proc puglstarttimer*(view: ptr Puglview_520094189; id: uintptrt_520094149;
                       timeout: cdouble): Puglstatus_520094171 {.cdecl,
      importc: "puglStartTimer".}
else:
  static :
    hint("Declaration of " & "puglstarttimer" &
        " already exists, not redeclaring")
when not declared(puglstoptimer):
  proc puglstoptimer*(view: ptr Puglview_520094189; id: uintptrt_520094149): Puglstatus_520094171 {.
      cdecl, importc: "puglStopTimer".}
else:
  static :
    hint("Declaration of " & "puglstoptimer" &
        " already exists, not redeclaring")
when not declared(puglsendevent):
  proc puglsendevent*(view: ptr Puglview_520094189; event: ptr Puglevent_520094167): Puglstatus_520094171 {.
      cdecl, importc: "puglSendEvent".}
else:
  static :
    hint("Declaration of " & "puglsendevent" &
        " already exists, not redeclaring")
when not declared(puglwaitforevent):
  proc puglwaitforevent*(view: ptr Puglview_520094189): Puglstatus_520094171 {.
      cdecl, importc: "puglWaitForEvent".}
else:
  static :
    hint("Declaration of " & "puglwaitforevent" &
        " already exists, not redeclaring")
when not declared(puglprocessevents):
  proc puglprocessevents*(view: ptr Puglview_520094189): Puglstatus_520094171 {.
      cdecl, importc: "puglProcessEvents".}
else:
  static :
    hint("Declaration of " & "puglprocessevents" &
        " already exists, not redeclaring")