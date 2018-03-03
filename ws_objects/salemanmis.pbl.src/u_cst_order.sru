$PBExportHeader$u_cst_order.sru
forward
global type u_cst_order from u_cst_tabpage
end type
type uo_bottom from uv_act_bar within u_cst_order
end type
type ddplb_1 from dropdownpicturelistbox within u_cst_order
end type
type st_4 from statictext within u_cst_order
end type
type cb_search from commandbutton within u_cst_order
end type
type sle_product_name from singlelineedit within u_cst_order
end type
type st_3 from statictext within u_cst_order
end type
type dp_2 from datepicker within u_cst_order
end type
type st_2 from statictext within u_cst_order
end type
type dp_1 from datepicker within u_cst_order
end type
type st_1 from statictext within u_cst_order
end type
type dw_1 from datawindow within u_cst_order
end type
type r_search from rectangle within u_cst_order
end type
end forward

global type u_cst_order from u_cst_tabpage
integer width = 3200
integer height = 1796
uo_bottom uo_bottom
ddplb_1 ddplb_1
st_4 st_4
cb_search cb_search
sle_product_name sle_product_name
st_3 st_3
dp_2 dp_2
st_2 st_2
dp_1 dp_1
st_1 st_1
dw_1 dw_1
r_search r_search
end type
global u_cst_order u_cst_order

on u_cst_order.create
int iCurrent
call super::create
this.uo_bottom=create uo_bottom
this.ddplb_1=create ddplb_1
this.st_4=create st_4
this.cb_search=create cb_search
this.sle_product_name=create sle_product_name
this.st_3=create st_3
this.dp_2=create dp_2
this.st_2=create st_2
this.dp_1=create dp_1
this.st_1=create st_1
this.dw_1=create dw_1
this.r_search=create r_search
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.uo_bottom
this.Control[iCurrent+2]=this.ddplb_1
this.Control[iCurrent+3]=this.st_4
this.Control[iCurrent+4]=this.cb_search
this.Control[iCurrent+5]=this.sle_product_name
this.Control[iCurrent+6]=this.st_3
this.Control[iCurrent+7]=this.dp_2
this.Control[iCurrent+8]=this.st_2
this.Control[iCurrent+9]=this.dp_1
this.Control[iCurrent+10]=this.st_1
this.Control[iCurrent+11]=this.dw_1
this.Control[iCurrent+12]=this.r_search
end on

on u_cst_order.destroy
call super::destroy
destroy(this.uo_bottom)
destroy(this.ddplb_1)
destroy(this.st_4)
destroy(this.cb_search)
destroy(this.sle_product_name)
destroy(this.st_3)
destroy(this.dp_2)
destroy(this.st_2)
destroy(this.dp_1)
destroy(this.st_1)
destroy(this.dw_1)
destroy(this.r_search)
end on

event resize;call super::resize;dw_1.Width = this.Width

r_search.Width = this.Width
//uo_bottom.Width = this.Width

uo_bottom.y=this.height - uo_bottom.height;

//uo_bottom.resize( this.Width  ,uo_bottom.height)

uo_bottom.r_1.width=0;


dw_1.height=this.height - r_search.height - uo_bottom.height -50;
end event

event ue_postconstructor;call super::ue_postconstructor;//

dw_1.SetTrans(SQLCA)
dw_1.Retrieve( )
//dw_1.object.datawindow.readonly = true
end event

type uo_bottom from uv_act_bar within u_cst_order
integer x = 18
integer y = 1272
integer taborder = 20
end type

on uo_bottom.destroy
call uv_act_bar::destroy
end on

event ue_btn_add;call super::ue_btn_add;open (w_product_edit)
end event

type ddplb_1 from dropdownpicturelistbox within u_cst_order
integer x = 1582
integer y = 268
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

type st_4 from statictext within u_cst_order
integer x = 1262
integer y = 272
integer width = 329
integer height = 56
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

type cb_search from commandbutton within u_cst_order
integer x = 2670
integer y = 308
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

type sle_product_name from singlelineedit within u_cst_order
integer x = 434
integer y = 256
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

type st_3 from statictext within u_cst_order
integer x = 105
integer y = 272
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

type dp_2 from datepicker within u_cst_order
integer x = 1550
integer y = 84
integer width = 686
integer height = 100
integer taborder = 10
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2016-11-11"), Time("15:48:41.000000"))
integer textsize = -10
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

type st_2 from statictext within u_cst_order
integer x = 1225
integer y = 108
integer width = 329
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
long backcolor = 67108864
string text = "结束时间"
boolean focusrectangle = false
end type

type dp_1 from datepicker within u_cst_order
integer x = 434
integer y = 88
integer width = 686
integer height = 100
integer taborder = 10
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2016-11-11"), Time("15:48:41.000000"))
integer textsize = -10
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

type st_1 from statictext within u_cst_order
integer x = 110
integer y = 112
integer width = 329
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
long backcolor = 67108864
string text = "开始时间"
boolean focusrectangle = false
end type

type dw_1 from datawindow within u_cst_order
integer y = 464
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

type r_search from rectangle within u_cst_order
long linecolor = 33554432
integer linethickness = 4
long fillcolor = 1073741824
integer y = 28
integer width = 3159
integer height = 412
end type

