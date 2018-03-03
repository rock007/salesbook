$PBExportHeader$u_cst_tab1.sru
forward
global type u_cst_tab1 from u_cst_tabpage
end type
type ddplb_category from dropdownpicturelistbox within u_cst_tab1
end type
type st_4 from statictext within u_cst_tab1
end type
type cb_search from commandbutton within u_cst_tab1
end type
type sle_product_name from singlelineedit within u_cst_tab1
end type
type st_3 from statictext within u_cst_tab1
end type
type dw_1 from datawindow within u_cst_tab1
end type
type r_search from rectangle within u_cst_tab1
end type
end forward

global type u_cst_tab1 from u_cst_tabpage
integer width = 3200
integer height = 1796
ddplb_category ddplb_category
st_4 st_4
cb_search cb_search
sle_product_name sle_product_name
st_3 st_3
dw_1 dw_1
r_search r_search
end type
global u_cst_tab1 u_cst_tab1

on u_cst_tab1.create
int iCurrent
call super::create
this.ddplb_category=create ddplb_category
this.st_4=create st_4
this.cb_search=create cb_search
this.sle_product_name=create sle_product_name
this.st_3=create st_3
this.dw_1=create dw_1
this.r_search=create r_search
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.ddplb_category
this.Control[iCurrent+2]=this.st_4
this.Control[iCurrent+3]=this.cb_search
this.Control[iCurrent+4]=this.sle_product_name
this.Control[iCurrent+5]=this.st_3
this.Control[iCurrent+6]=this.dw_1
this.Control[iCurrent+7]=this.r_search
end on

on u_cst_tab1.destroy
call super::destroy
destroy(this.ddplb_category)
destroy(this.st_4)
destroy(this.cb_search)
destroy(this.sle_product_name)
destroy(this.st_3)
destroy(this.dw_1)
destroy(this.r_search)
end on

event resize;call super::resize;dw_1.Width = this.Width

r_search.Width = this.Width

dw_1.height=this.height - r_search.height  -50;
end event

event ue_postconstructor;call super::ue_postconstructor;//

dw_1.SetTrans(SQLCA)
dw_1.Retrieve( )
//dw_1.object.datawindow.readonly = true
end event

type ddplb_category from dropdownpicturelistbox within u_cst_tab1
integer x = 1582
integer y = 96
integer width = 695
integer height = 324
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
long picturemaskcolor = 536870912
end type

type st_4 from statictext within u_cst_tab1
integer x = 1262
integer y = 108
integer width = 329
integer height = 48
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
long backcolor = 67108864
string text = "产品分类"
boolean focusrectangle = false
end type

type cb_search from commandbutton within u_cst_tab1
integer x = 2670
integer y = 112
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
 
 String where='' ,product_name_str,cate_str
 
 product_name_str= sle_product_name.text
 
 if(isnull( product_name_str) or product_name_str <> '') then
 
 	where=" title like  '%"+ product_name_str+"%'";
 
end if
 
dw_1.SetRedraw(false)
dw_1.SetFilter(where)
dw_1.Filter()
dw_1.SetRedraw(true)
end event

type sle_product_name from singlelineedit within u_cst_tab1
integer x = 434
integer y = 84
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

type st_3 from statictext within u_cst_tab1
integer x = 105
integer y = 100
integer width = 297
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
long backcolor = 67108864
string text = "产品名称"
boolean focusrectangle = false
end type

type dw_1 from datawindow within u_cst_tab1
integer y = 288
integer width = 1166
integer height = 584
integer taborder = 10
string title = "none"
string dataobject = "dw_shop_product"
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

type r_search from rectangle within u_cst_tab1
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer y = 28
integer width = 3159
integer height = 240
end type

