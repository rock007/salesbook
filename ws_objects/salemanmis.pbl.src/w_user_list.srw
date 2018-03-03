$PBExportHeader$w_user_list.srw
forward
global type w_user_list from window
end type
type dw_1 from datawindow within w_user_list
end type
end forward

global type w_user_list from window
integer width = 2537
integer height = 1484
windowtype windowtype = child!
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
end type
global w_user_list w_user_list

on w_user_list.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on w_user_list.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within w_user_list
integer y = 20
integer width = 2395
integer height = 816
integer taborder = 10
string title = "none"
string dataobject = "dw_user_list"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

