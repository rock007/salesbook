$PBExportHeader$w_product_edit.srw
$PBExportComments$产品编辑
forward
global type w_product_edit from window
end type
type cb_1 from commandbutton within w_product_edit
end type
type cb_close from commandbutton within w_product_edit
end type
type cb_save from commandbutton within w_product_edit
end type
type dw_1 from datawindow within w_product_edit
end type
end forward

global type w_product_edit from window
integer width = 3776
integer height = 1852
boolean titlebar = true
string title = "产品编辑"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
cb_close cb_close
cb_save cb_save
dw_1 dw_1
end type
global w_product_edit w_product_edit

type variables
long il_newrow
end variables

on w_product_edit.create
this.cb_1=create cb_1
this.cb_close=create cb_close
this.cb_save=create cb_save
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.cb_close,&
this.cb_save,&
this.dw_1}
end on

on w_product_edit.destroy
destroy(this.cb_1)
destroy(this.cb_close)
destroy(this.cb_save)
destroy(this.dw_1)
end on

event open;integer   ls_parm=0 ;

ls_parm=   Message.DoubleParm

//	 messagebox('111',ls_parm)

 //connect using sqlca;

dw_1.SetTransObject(sqlca)

if isnull(ls_parm) or ls_parm = 0  then
		
	il_newrow = dw_1.InsertRow(0)
	dw_1.ScrollToRow(il_newrow)
	
else
	dw_1.retrieve( ls_parm)
	
end if


end event

type cb_1 from commandbutton within w_product_edit
integer x = 1888
integer y = 1636
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

event clicked;string ls_sqlerrtext
long ll_Rows,ll_count


if dw_1.accepttext() <> 1 then
		messagebox('提示', '当前栏存在空或无效的值，请改正后再进行保存！')
	return -1
end if

ll_Rows = dw_1.ModifiedCount() + dw_1.DeletedCount()
IF isnull(ll_rows) or ll_rows <= 0 THEN 
	return       //数据没有被修改直接退出
END IF

dw_1.SetItem ( il_newrow,'create_date',today())
dw_1.SetItem( il_newrow,'update_date',today())

if dw_1.update() <> 1 then goto error 

commit;          // 明细数据存入
//st_message.text = "存入完毕"
//dw_2.retrieve()  //刷新列表

close(parent )

return 


error:
	ls_sqlerrtext = sqlca.sqlerrtext
	rollback;
	messagebox("", "存入失败！数据存在错误，请改正后再进行保存", stopsign!)
	return -1
	
end event

type cb_close from commandbutton within w_product_edit
integer x = 3131
integer y = 1636
integer width = 457
integer height = 92
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "关闭(&E)"
end type

event clicked;close( parent )
end event

type cb_save from commandbutton within w_product_edit
integer x = 2528
integer y = 1636
integer width = 457
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "保存(&S)"
end type

event clicked;string ls_sqlerrtext
long ll_Rows,ll_count


if dw_1.accepttext() <> 1 then
		messagebox('提示', '当前栏存在空或无效的值，请改正后再进行保存！')
	return -1
end if

ll_Rows = dw_1.ModifiedCount() + dw_1.DeletedCount()
IF isnull(ll_rows) or ll_rows <= 0 THEN 
	return       //数据没有被修改直接退出
END IF

dw_1.SetItem ( il_newrow,'create_date',today())
dw_1.SetItem( il_newrow,'update_date',today())

if dw_1.update() <> 1 then goto error 

commit;          // 明细数据存入
//st_message.text = "存入完毕"
//dw_2.retrieve()  //刷新列表

close(parent )

return 


error:
	ls_sqlerrtext = sqlca.sqlerrtext
	rollback;
	messagebox("", "存入失败！数据存在错误，请改正后再进行保存", stopsign!)
	return -1
	
end event

type dw_1 from datawindow within w_product_edit
integer y = 12
integer width = 3707
integer height = 1556
integer taborder = 10
string dataobject = "dw_shop_product_edit"
boolean border = false
boolean livescroll = true
end type

