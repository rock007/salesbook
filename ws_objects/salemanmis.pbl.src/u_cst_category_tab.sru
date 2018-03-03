$PBExportHeader$u_cst_category_tab.sru
$PBExportComments$产品分类
forward
global type u_cst_category_tab from u_cst_tabpage
end type
type cb_add from commandbutton within u_cst_category_tab
end type
type cb_search from commandbutton within u_cst_category_tab
end type
type sle_product_name from singlelineedit within u_cst_category_tab
end type
type st_3 from statictext within u_cst_category_tab
end type
type dw_1 from datawindow within u_cst_category_tab
end type
type r_search from rectangle within u_cst_category_tab
end type
end forward

global type u_cst_category_tab from u_cst_tabpage
integer width = 3200
integer height = 1796
cb_add cb_add
cb_search cb_search
sle_product_name sle_product_name
st_3 st_3
dw_1 dw_1
r_search r_search
end type
global u_cst_category_tab u_cst_category_tab

on u_cst_category_tab.create
int iCurrent
call super::create
this.cb_add=create cb_add
this.cb_search=create cb_search
this.sle_product_name=create sle_product_name
this.st_3=create st_3
this.dw_1=create dw_1
this.r_search=create r_search
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_add
this.Control[iCurrent+2]=this.cb_search
this.Control[iCurrent+3]=this.sle_product_name
this.Control[iCurrent+4]=this.st_3
this.Control[iCurrent+5]=this.dw_1
this.Control[iCurrent+6]=this.r_search
end on

on u_cst_category_tab.destroy
call super::destroy
destroy(this.cb_add)
destroy(this.cb_search)
destroy(this.sle_product_name)
destroy(this.st_3)
destroy(this.dw_1)
destroy(this.r_search)
end on

event resize;call super::resize;dw_1.Width = this.Width

r_search.Width = this.Width

cb_add.x=cb_search.x +  cb_search.width + 50

dw_1.height=this.height - r_search.height  -50;
end event

event ue_postconstructor;call super::ue_postconstructor;//

dw_1.SetTrans(SQLCA)
dw_1.Retrieve( 1 )
//dw_1.object.datawindow.readonly = true
end event

type cb_add from commandbutton within u_cst_category_tab
integer x = 2107
integer y = 100
integer width = 457
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "新增(&I)"
end type

event clicked;//
 
dw_1.Retrieve ()
end event

type cb_search from commandbutton within u_cst_category_tab
integer x = 2670
integer y = 100
integer width = 457
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "查询(&S)"
end type

event clicked;//
 
dw_1.Retrieve ()
end event

type sle_product_name from singlelineedit within u_cst_category_tab
integer x = 434
integer y = 100
integer width = 727
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string pointer = "AppStarting!"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within u_cst_category_tab
integer x = 105
integer y = 116
integer width = 297
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
long backcolor = 67108864
string text = "名称"
boolean focusrectangle = false
end type

type dw_1 from datawindow within u_cst_category_tab
integer y = 292
integer width = 1166
integer height = 584
integer taborder = 10
string title = "none"
string dataobject = "dw_dict_list"
richtexttoolbaractivation richtexttoolbaractivation = richtexttoolbaractivationnever!
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;//双击编辑
integer  ls_row_id
if dwo.type = "column" and rowcount() > 0 then
	ls_row_id = GetItemNumber  (row,"id")
	//string ls_row = string(row)
	
	openwithparm(w_product_edit,ls_row_id)
end if
end event

type r_search from rectangle within u_cst_category_tab
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer y = 28
integer width = 3159
integer height = 240
end type

