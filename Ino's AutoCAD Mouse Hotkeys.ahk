; Start suspended
Suspend, On

; Setup
#InstallKeybdHook
panDistance = 100

SetTitleMatchMode, 2
SetTitleMatchMode, fast
GroupAdd, acadWinGroup, AutoCAD
GroupAdd, acadWinGroup, Hatch
GroupAdd, acadWinGroup, SuperHatch
GroupAdd, acadWinGroup, Block
GroupAdd, acadWinGroup, Block Definition
GroupAdd, acadWinGroup, Reference
GroupAdd, acadWinGroup, Layer
GroupAdd, acadWinGroup, Quick Select
GroupAdd, acadWinGroup, Attribute
GroupAdd, acadWinGroup, Edit
GroupAdd, acadWinGroup, Insert
#IfWinActive ahk_group acadWinGroup

XButton1:: reload

XButton2 UP::
	sleep 120
	suspend, on
return
SetKeyDelay,10,10
XButton2:: suspend, off




; Pan
Numpad2 & Numpad5:: InputBox, panDistance, Pan Distance, Enter Pan Distance, , , , , , , , 100
Up::    SendInput '-pan{enter}0,0{enter}0,-%panDistance%{enter}
Down::  SendInput '-pan{enter}0,0{enter}0,%panDistance%{enter}

Left::  SendInput '-pan{enter}0,0{enter}%panDistance%,0{enter}
Right:: SendInput '-pan{enter}0,0{enter}-%panDistance%,0{enter}




; Draw
p & t:: SendInput {escape}_point{enter}
l::     SendInput {escape}_line{enter}
x & l:: SendInput {escape}_xline{enter}
p::     SendInput {escape}_pline{enter}
s::     SendInput {escape}_spline{enter}
.::     SendInput {escape}_circle{enter}
. & p:: SendInput {escape}_circle{enter}3p{enter}
. & t:: SendInput {escape}_circle{enter}3p{enter}_tan{enter}
. & r:: SendInput {escape}_circle{enter}ttr{enter}
,::     SendInput {escape}_ellipse{enter}
h::     SendInput {escape}_hatch{enter}
s & h:: SendInput {escape}_superhatch{enter}
h & w:: SendInput _wipeout{enter}
m & l:: SendInput {escape}_mline{enter}
r & e:: SendInput {escape}_rectangle{enter}
r & g:: SendInput {escape}_region{enter}
b & o:: SendInput {escape}_boundary{enter}




; Text
t & m:: SendInput _txt2mtxt{enter}
t & e:: SendInput _dtext{enter}




; Inquiry
i & d:: SendInput _dist{enter}




; Dimension
d::     SendInput {escape}_dimlinear{enter}
d & s:: SendInput {escape}_dimlinear{enter}{enter}
d & a:: SendInput {escape}_dimaligned{enter}
d & e:: SendInput {escape}_dimangular{enter}
d & r:: SendInput {escape}_dimradius{enter}
d & c:: SendInput _dimcontinue{enter}

a & e:: SendInput {escape}_area{enter}a{enter}o{enter}




; Blocks
b & g:: SendInput _block{enter}
b & v:: SendInput {escape}_insert{enter}
r & f:: SendInput _refedit{enter}
b & x:: SendInput _blocktoxref{enter}
x & c:: SendInput _xclip{enter}
b & e:: SendInput _bedit{enter}




; Modify
m::     SendInput _move{enter}
c::     SendInput _copy{enter}
c & x:: SendInput _copy{enter}0,0{enter}0,0{enter}{enter}
c & m:: SendInput _copym{enter}
r::     SendInput _rotate{enter}
r & 3:: SendInput _rotate3d{enter}
o::     SendInput {escape}_offset{enter}
i::     SendInput _mirror{enter}
e::     SendInput {escape}_stretch{enter}
w::     SendInput _scale{enter}
a::     SendInput _align{enter}
v::     SendInput '_matchprop{enter}
s & e:: SendInput _select{enter}

o & k:: SendInput _overkill{enter}
o & 9:: SendInput {escape}_exoffset{enter}
x & s:: SendInput _explode{enter}
b & u:: SendInput _burst{enter}
a & r:: SendInput _array{enter}
d & v:: SendInput {escape}_divide{enter}
m & e:: SendInput {escape}_measure{enter}
p & i:: SendInput {escape}_pedit{enter}
p & o:: SendInput {escape}_pedit{enter}m{enter}
h & e:: SendInput _hatchedit{enter}
f & l:: SendInput _flatten{enter}




; trim
t::     SendInput _trim{enter}
x::     SendInput _extend{enter}
t & r:: SendInput _trim{enter}{enter}
x & z:: SendInput _extend{enter}{enter}
x & t:: SendInput {escape}_extrim{enter}




; fillet
f::     SendInput {escape}_fillet{enter}
f & r:: SendInput {escape}_fillet{enter}r{enter}
f & d:: SendInput {escape}_chamfer{enter}d{enter}0{enter}0{enter}




; Selection
q::     SendInput _qselect{enter}
b::     SendInput _previous{enter}
g::     SendInput _last{enter}
f & s:: SendInput _fs{enter}




; Osnaps
1::     SendInput _nea{enter}
2::     SendInput _ins{enter}
3::     SendInput _endp{enter}
4::     SendInput _int{enter}
5::     SendInput _mid{enter}
6::     SendInput _tan{enter}
8::     SendInput _per{enter}
9::     SendInput _m2p{enter}
0::     SendInput _fro{enter}
o & s:: SendInput {escape}_osmode{enter}6399{enter}




; layers
l & i:: SendInput {escape}_layiso{enter}
l & p:: SendInput {escape}_layerP{enter}

l & h:: SendInput {escape}_layoff{enter}
l & u:: SendInput {escape}_layon{enter}

l & f:: SendInput {escape}_layfrz{enter}
l & t:: SendInput {escape}_laythw{enter}

l & k:: SendInput {escape}_laylck{enter}
l & o:: SendInput {escape}_layulk{enter}

l & d:: SendInput {escape}_laydel{enter}
l & m:: SendInput {escape}_laymrg{enter}
l & c:: SendInput {escape}_laymch{enter}

w & a:: SendInput _laywalk{enter}
l & s:: SendInput _layerstate{enter}
y::     SendInput {escape}_laymcur{enter}




; object isolate
o & i:: SendInput _isolateobjects{enter}
o & h:: SendInput _hideobjects{enter}
o & e:: SendInput _unisolateobjects{enter}




; zoom regen find fields
z::     SendInput '_zoom{enter}_w{enter}
z & b:: SendInput '_zoom{enter}_o{enter}
n::     SendInput '_zoom{enter}_p{enter}
r & q:: SendInput {escape}_regen{enter}
r & a:: SendInput {escape}_regenall{enter}
u & f:: SendInput _updatefield{enter}
f & i:: SendInput _find{enter}
u & l:: SendInput _datalinkupdate{enter}u{enter}k{enter}
d & t:: SendInput _dataextraction{enter}
d & w:: SendInput {escape}_dview{enter}{enter}po{enter}0,0,0{enter}0,0,1{enter}{enter}z{enter}e{enter}




; plan
p & 0:: SendInput _plan{enter}c{enter}
p & 9:: SendInput _plan{enter}w{enter}
w & e:: SendInput _ucs{enter}z{enter}90{enter}plan{enter}c{enter}
w & q:: SendInput _ucs{enter}z{enter}-90{enter}plan{enter}c{enter}
w & s:: SendInput _ucs{enter}z{enter}180{enter}plan{enter}c{enter}




; ucs
u::     SendInput _ucs{enter}_ob{enter}
u & i:: SendInput _ucs{enter}z{enter}90{enter}
u & y:: SendInput _ucs{enter}z{enter}-90{enter}
u & j:: SendInput _ucs{enter}z{enter}180{enter}
u & w:: SendInput _ucs{enter}w{enter}
u & p:: SendInput _ucs{enter}p{enter}
u & v:: SendInput _ucs{enter}v{enter}




; paperspace modelspace
F5::    SendInput {escape}_pspace{enter}
F6::    SendInput {escape}_mspace{enter}




; views
Numpad1:: Sendinput _-view{enter}swiso{enter}
Numpad2:: Sendinput _-view{enter}front{enter}
Numpad3:: Sendinput _-view{enter}seiso{enter}
Numpad4:: Sendinput _-view{enter}left{enter}
Numpad5:: Sendinput _-view{enter}top{enter}
Numpad6:: Sendinput _-view{enter}right{enter}
Numpad7:: Sendinput _-view{enter}nwiso{enter}
Numpad8:: Sendinput _-view{enter}back{enter}
Numpad9:: Sendinput _-view{enter}neiso{enter}
Numpad0:: Sendinput _-view{enter}bottom{enter}




; open save plot preview draworder misc
s & b:: SendInput _ai_draworder _back{enter}
s & f:: SendInput _ai_draworder _front{enter}
s & u:: SendInput _ai_draworder u{enter}
s & a:: SendInput _ai_draworder a{enter}
d & b:: SendInput _ai_draworder _back{enter}
d & f:: SendInput _ai_draworder _front{enter}
d & u:: SendInput _ai_draworder u{enter}
w & b:: SendInput _wblock{enter}
p & u:: SendInput {escape}_purge{enter}
a & u:: SendInput {escape}_audit{enter}
p & r:: SendInput {escape}_preview{enter}




; misc unused
; b & c:: SendInput -vbarun thisdrawing.main{enter}
; g & p:: SendInput genproductivityreport{enter}
; r & i:: SendInput riblock{enter}
; r & u:: SendInput all{enter}{enter}




