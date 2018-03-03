$PBExportHeader$u_cst_cat_tab.sru
forward
global type u_cst_cat_tab from u_cst_tabpage
end type
type cb_del from commandbutton within u_cst_cat_tab
end type
type cb_add from commandbutton within u_cst_cat_tab
end type
type dw_1 from datawindow within u_cst_cat_tab
end type
type tv_1 from treeview within u_cst_cat_tab
end type
end forward

global type u_cst_cat_tab from u_cst_tabpage
integer width = 2789
integer height = 1560
cb_del cb_del
cb_add cb_add
dw_1 dw_1
tv_1 tv_1
end type
global u_cst_cat_tab u_cst_cat_tab

on u_cst_cat_tab.create
int iCurrent
call super::create
this.cb_del=create cb_del
this.cb_add=create cb_add
this.dw_1=create dw_1
this.tv_1=create tv_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_del
this.Control[iCurrent+2]=this.cb_add
this.Control[iCurrent+3]=this.dw_1
this.Control[iCurrent+4]=this.tv_1
end on

on u_cst_cat_tab.destroy
call super::destroy
destroy(this.cb_del)
destroy(this.cb_add)
destroy(this.dw_1)
destroy(this.tv_1)
end on

event constructor;call super::constructor;
long ll_parent
int cat_id
string cat_title,cat_code;

dw_1.SetTransObject(sqlca)
dw_1.retrieve( );

long  ll_lev1, ll_lev2, ll_lev3, ll_lev4
int   index
tv_1.PictureHeight = 32
tv_1.PictureWidth = 32
ll_lev1 = tv_1.InsertItemLast(0,"Composers",1)
ll_lev2 = tv_1.InsertItemLast(ll_lev1,     "Beethoven",2)
ll_lev3 = tv_1.InsertItemLast(ll_lev2,       "Symphonies",3)
FOR index = 1 to 9   
	ll_lev4 = tv_1.InsertItemSort(ll_lev3,    "Symphony # "+ String(index), 4)
NEXT

tv_1.expandall( ll_lev1)

select id ,title ,code into :cat_id,:cat_title,:cat_code  from b_product_categroy 
where status=0 and parent_id=0 or parent_id is null ;

//tv_1.ExpandItem(ll_lev3)
//tv_1.ExpandItem(ll_lev4)

end event

event resize;call super::resize;
tv_1.height = newheight -100

dw_1.width=newwidth - tv_1.width
dw_1.height=newheight -300

cb_del.x=newwidth - cb_del.width - 300
cb_del.y=newheight - cb_del.height -100

cb_add.y= cb_del.y
cb_add.x= cb_del.x - cb_add.width -100
end event

type cb_del from commandbutton within u_cst_cat_tab
integer x = 2025
integer y = 1396
integer width = 457
integer height = 92
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "删除(&D)"
end type

type cb_add from commandbutton within u_cst_cat_tab
integer x = 1422
integer y = 1396
integer width = 457
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "添加(&I)"
end type

event clicked;open(w_cat_edit)
end event

type dw_1 from datawindow within u_cst_cat_tab
integer x = 805
integer y = 28
integer width = 1893
integer height = 1136
integer taborder = 20
string title = "none"
string dataobject = "dw_product_cat_list"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type tv_1 from treeview within u_cst_cat_tab
integer x = 27
integer y = 32
integer width = 768
integer height = 1196
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
long picturemaskcolor = 536870912
long statepicturemaskcolor = 536870912
end type

