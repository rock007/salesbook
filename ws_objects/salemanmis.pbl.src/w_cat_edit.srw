$PBExportHeader$w_cat_edit.srw
$PBExportComments$分类编辑
forward
global type w_cat_edit from window
end type
type cb_2 from commandbutton within w_cat_edit
end type
type cb_1 from commandbutton within w_cat_edit
end type
type dw_1 from datawindow within w_cat_edit
end type
end forward

global type w_cat_edit from window
integer width = 3054
integer height = 1212
boolean titlebar = true
string title = "分类编辑"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_cat_edit w_cat_edit

on w_cat_edit.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_cat_edit.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;
String   ls_parm="" ;

ls_parm=   Message.StringParm	 

 //connect using sqlca;

dw_1.SetTransObject(sqlca)

if isnull(ls_parm) or ls_parm = ''  then
		
	long ll_newrow
	ll_newrow = dw_1.InsertRow(0)
	dw_1.ScrollToRow(ll_newrow)
	
else
	dw_1.retrieve( ls_parm)
	
end if
end event

type cb_2 from commandbutton within w_cat_edit
integer x = 2501
integer y = 980
integer width = 457
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "关闭(&C)"
end type

event clicked;
close(parent)
//parent.event close( )
end event

type cb_1 from commandbutton within w_cat_edit
integer x = 1838
integer y = 980
integer width = 457
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "保存(&S)"
end type

event clicked;//
string ls_sqlerrtext
long ll_Rows,ll_count

if dw_1.accepttext() <> 1 then
		messagebox('提示', '当前栏存在空或无效的值，请改正后再进行保存！')
	return -1
end if

ll_Rows = dw_1.ModifiedCount() + dw_1.DeletedCount()
IF isnull(ll_rows) or ll_rows <= 0 THEN 
	return       //数据没有被修改直接退出
END IF


if dw_1.update() <> 1 then goto error 

commit;       


messagebox("", "数据保存成功")
	
close(parent)

return 


error:
	ls_sqlerrtext = sqlca.sqlerrtext
	rollback;
	messagebox("", "存入失败！数据存在错误，请改正后再进行保存", stopsign!)
	return -1
	
end event

type dw_1 from datawindow within w_cat_edit
integer y = 16
integer width = 3031
integer height = 912
integer taborder = 10
string title = "none"
string dataobject = "dw_product_cat_edit"
boolean border = false
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

