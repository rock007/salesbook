$PBExportHeader$uv_act_bar.sru
forward
global type uv_act_bar from userobject
end type
type cb_pre_page from commandbutton within uv_act_bar
end type
type cb_del from commandbutton within uv_act_bar
end type
type cb_add from commandbutton within uv_act_bar
end type
type cb_next_page from commandbutton within uv_act_bar
end type
type r_1 from rectangle within uv_act_bar
end type
end forward

global type uv_act_bar from userobject
integer width = 3602
integer height = 256
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
event ue_btn_add ( )
cb_pre_page cb_pre_page
cb_del cb_del
cb_add cb_add
cb_next_page cb_next_page
r_1 r_1
end type
global uv_act_bar uv_act_bar

forward prototypes
public function integer resize (integer w, integer h)
public subroutine ue_btn_add ()
end prototypes

event ue_btn_add();//

//Messagebox("event","dddd")
end event

public function integer resize (integer w, integer h);//

r_1.width=w;

return 1;
end function

public subroutine ue_btn_add ();
end subroutine

on uv_act_bar.create
this.cb_pre_page=create cb_pre_page
this.cb_del=create cb_del
this.cb_add=create cb_add
this.cb_next_page=create cb_next_page
this.r_1=create r_1
this.Control[]={this.cb_pre_page,&
this.cb_del,&
this.cb_add,&
this.cb_next_page,&
this.r_1}
end on

on uv_act_bar.destroy
destroy(this.cb_pre_page)
destroy(this.cb_del)
destroy(this.cb_add)
destroy(this.cb_next_page)
destroy(this.r_1)
end on

event constructor;//this.postevent( 'resize');//not ok


//MessageBox("222",this.width);

//r_1.resize( 150 ,r_1.height )

//r_1.width=this.width;

end event

type cb_pre_page from commandbutton within uv_act_bar
integer x = 2048
integer y = 108
integer width = 457
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "上一页(&P)"
end type

type cb_del from commandbutton within uv_act_bar
integer x = 1445
integer y = 108
integer width = 457
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "删除(&D)"
end type

type cb_add from commandbutton within uv_act_bar
integer x = 832
integer y = 108
integer width = 457
integer height = 92
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "新增(&I)"
end type

event clicked;//
//uv_act_bar.postevent( "ue_btn_add")

this.getparent( ).postevent( "ue_btn_add")
end event

type cb_next_page from commandbutton within uv_act_bar
integer x = 2633
integer y = 108
integer width = 457
integer height = 92
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "下一页(&N)"
end type

type r_1 from rectangle within uv_act_bar
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer x = 14
integer y = 40
integer width = 3547
integer height = 204
end type

