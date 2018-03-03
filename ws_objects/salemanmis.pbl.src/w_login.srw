$PBExportHeader$w_login.srw
forward
global type w_login from window
end type
type sle_pwd from singlelineedit within w_login
end type
type cb_login from commandbutton within w_login
end type
type sle_username from singlelineedit within w_login
end type
type st_2 from statictext within w_login
end type
type st_1 from statictext within w_login
end type
end forward

global type w_login from window
integer width = 2066
integer height = 948
boolean titlebar = true
string title = "用户登录"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_pwd sle_pwd
cb_login cb_login
sle_username sle_username
st_2 st_2
st_1 st_1
end type
global w_login w_login

on w_login.create
this.sle_pwd=create sle_pwd
this.cb_login=create cb_login
this.sle_username=create sle_username
this.st_2=create st_2
this.st_1=create st_1
this.Control[]={this.sle_pwd,&
this.cb_login,&
this.sle_username,&
this.st_2,&
this.st_1}
end on

on w_login.destroy
destroy(this.sle_pwd)
destroy(this.cb_login)
destroy(this.sle_username)
destroy(this.st_2)
destroy(this.st_1)
end on

type sle_pwd from singlelineedit within w_login
integer x = 914
integer y = 420
integer width = 773
integer height = 92
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
boolean password = true
end type

type cb_login from commandbutton within w_login
integer x = 992
integer y = 632
integer width = 457
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "登录"
end type

event clicked;
//检查输入


open ( w_sys_main)

close( w_login)
end event

type sle_username from singlelineedit within w_login
integer x = 914
integer y = 296
integer width = 773
integer height = 92
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
end type

type st_2 from statictext within w_login
integer x = 631
integer y = 440
integer width = 251
integer height = 92
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
long backcolor = 67108864
string text = "密码"
boolean focusrectangle = false
end type

type st_1 from statictext within w_login
integer x = 622
integer y = 292
integer width = 233
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
long backcolor = 67108864
string text = "用户名"
boolean focusrectangle = false
end type

