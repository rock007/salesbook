$PBExportHeader$w_user_edit.srw
forward
global type w_user_edit from window
end type
type cb_1 from commandbutton within w_user_edit
end type
type dw_user from datawindow within w_user_edit
end type
end forward

global type w_user_edit from window
integer width = 2505
integer height = 1932
windowtype windowtype = child!
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
dw_user dw_user
end type
global w_user_edit w_user_edit

on w_user_edit.create
this.cb_1=create cb_1
this.dw_user=create dw_user
this.Control[]={this.cb_1,&
this.dw_user}
end on

on w_user_edit.destroy
destroy(this.cb_1)
destroy(this.dw_user)
end on

event open;//接受传值

String   ls_parm 
ls_parm   =   Message.StringParm	 ;


	dw_user.SetTransObject(sqlca)
	dw_user.InsertRow(0)

IF  ls_parm = '000'   then



END IF

end event

type cb_1 from commandbutton within w_user_edit
integer x = 1417
integer y = 1652
integer width = 457
integer height = 92
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "宋体"
string text = "Save"
end type

event clicked;dw_user.Update ();
end event

type dw_user from datawindow within w_user_edit
integer x = 37
integer y = 60
integer width = 2181
integer height = 1528
integer taborder = 10
string title = "none"
string dataobject = "dw_user_info"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemfocuschanged;String ls_sql
Integer rtncode
DataWindowChild field_child


String m_province

Choose Case lower(dwo.name)

Case "city"
	
 //rtncode=dw_user.GetChild("province",field_child)
//If rtncode = -1 Then MessageBox( "Error", "Not a DataWindowChild")

 m_province= dw_user.GetItemString ( row, "province " )
	
	messagebox("",m_province)
	
//city字段获得焦点
//获得city字段下拉数据窗口的句柄
rtncode = dw_user.GetChild("city",field_child)
If rtncode = -1 Then MessageBox( "Error", "Not a DataWindowChild")
//设置事务对象
field_child.SetTransObject(SQLCA)

//获得下拉数据窗口的SQL语句
ls_sql=field_child.GetSQLSelect()

Messagebox(dwo.name ,ls_sql)

//重新设置SQL语句,加上Where条件
//ls_sql=ls_sql+"Wherefield=‘"+dwo.name+"'"
//field_child.SetSQLSelect(ls_sql)
//取得满足条件的数据
field_child.Retrieve()
Case "unit"
//获得unit字段下拉数据窗口的句柄
//rtncode = dw_user.GetChild("unit",field_child)

End Choose
end event

