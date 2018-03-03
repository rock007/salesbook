$PBExportHeader$u_cst_home.sru
$PBExportComments$主界面
forward
global type u_cst_home from u_cst_tabpage
end type
type st_1 from statictext within u_cst_home
end type
end forward

global type u_cst_home from u_cst_tabpage
integer width = 2551
integer height = 1196
st_1 st_1
end type
global u_cst_home u_cst_home

on u_cst_home.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on u_cst_home.destroy
call super::destroy
destroy(this.st_1)
end on

type st_1 from statictext within u_cst_home
integer x = 709
integer y = 424
integer width = 457
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
long backcolor = 67108864
string text = "the home"
boolean focusrectangle = false
end type

