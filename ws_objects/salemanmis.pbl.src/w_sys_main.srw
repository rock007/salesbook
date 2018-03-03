$PBExportHeader$w_sys_main.srw
forward
global type w_sys_main from window
end type
type mdi_1 from mdiclient within w_sys_main
end type
end forward

global type w_sys_main from window
integer width = 2610
integer height = 1484
boolean titlebar = true
string title = "主界面"
string menuname = "m_menu"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowtype windowtype = mdi!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
mdi_1 mdi_1
end type
global w_sys_main w_sys_main

on w_sys_main.create
if this.MenuName = "m_menu" then this.MenuID = create m_menu
this.mdi_1=create mdi_1
this.Control[]={this.mdi_1}
end on

on w_sys_main.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mdi_1)
end on

type mdi_1 from mdiclient within w_sys_main
long BackColor=268435456
end type

