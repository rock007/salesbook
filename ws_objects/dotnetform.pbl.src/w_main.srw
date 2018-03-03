$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_1 from statictext within w_main
end type
type pb_1 from picturebutton within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 3378
integer height = 1408
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_1 st_1
pb_1 pb_1
cb_1 cb_1
end type
global w_main w_main

on w_main.create
this.st_1=create st_1
this.pb_1=create pb_1
this.cb_1=create cb_1
this.Control[]={this.st_1,&
this.pb_1,&
this.cb_1}
end on

on w_main.destroy
destroy(this.st_1)
destroy(this.pb_1)
destroy(this.cb_1)
end on

type st_1 from statictext within w_main
integer x = 1550
integer y = 76
integer width = 672
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "威威威威我人有的和"
boolean focusrectangle = false
end type

type pb_1 from picturebutton within w_main
integer x = 507
integer y = 268
integer width = 110
integer height = 96
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
boolean originalsize = true
string picturename = "Animation!"
alignment htextalign = left!
end type

type cb_1 from commandbutton within w_main
integer x = 2144
integer y = 696
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "确定"
end type

