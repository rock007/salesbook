$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type uo_xplistbar from u_cst_xplistbar within w_main
end type
type uo_tabcontrol from u_cst_tabcontrol within w_main
end type
end forward

global type w_main from window
integer width = 4142
integer height = 2124
boolean titlebar = true
string title = "销售管理系统"
string menuname = "m_menu"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
uo_xplistbar uo_xplistbar
uo_tabcontrol uo_tabcontrol
end type
global w_main w_main

type variables
Boolean ib_preview

//首页
u_cst_home iuo_home 
//产品
u_cst_tab1  iuo_1
u_cst_test1 iuo_2

//产品分类
u_cst_cat_tab iuo_cat  
u_cst_category_tab iuo_cat2

//u_cst_test iuo_3
//u_cst_test iuo_4
//u_cst_test iuo_5
end variables

forward prototypes
public subroutine f_open_tab (ref u_cst_tabpage tab, string tab_name)
end prototypes

public subroutine f_open_tab (ref u_cst_tabpage tab, string tab_name);//

if uo_tabcontrol.of_isvisible(tab) then
	uo_tabcontrol.of_SelectTab(tab)
else
	uo_tabcontrol.of_OpenTab(tab, tab_name,0)
	uo_tabcontrol.of_SelectTab(tab)
end if

	
	
	
	
end subroutine

on w_main.create
if this.MenuName = "m_menu" then this.MenuID = create m_menu
this.uo_xplistbar=create uo_xplistbar
this.uo_tabcontrol=create uo_tabcontrol
this.Control[]={this.uo_xplistbar,&
this.uo_tabcontrol}
end on

on w_main.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.uo_xplistbar)
destroy(this.uo_tabcontrol)
end on

event open;
//Toolbar Strip

//XPListBar
Long ll_parent

ll_parent = uo_xplistbar.of_AddGroup('欢迎使用', '', uo_xplistbar.NOARROW)
uo_xplistbar.of_AddLabel('用户：sam', '', ll_parent)
uo_xplistbar.of_AddLabel('角色：管理员', '', ll_parent)
uo_xplistbar.of_AddLabel('sssssdd12222：', '', ll_parent)

ll_parent = uo_xplistbar.of_AddGroup('快速操作', 'Mail.ico', uo_xplistbar.SPECIAL)
uo_xplistbar.of_AddLink("添加产品", "Custom001!", ll_parent)
//uo_xplistbar.of_AddLine(ll_parent)
uo_xplistbar.of_AddLink('产品销售', 'Custom003!', ll_parent)
//uo_xplistbar.of_AddLine(ll_parent)
uo_xplistbar.of_AddLink('订单查看', 'Custom002!', ll_parent)
//uo_xplistbar.of_AddLine(ll_parent)

uo_xplistbar.of_AddLink('产品入库', 'Custom004!', ll_parent)


ll_parent = uo_xplistbar.of_AddGroup('产品中心', '')
uo_xplistbar.of_AddLink('添加产品', 'Custom001!', ll_parent)
uo_xplistbar.of_AddLink('产品分类', 'Custom005!', ll_parent)
uo_xplistbar.of_AddLink('厂家', 'Custom006!', ll_parent)
uo_xplistbar.of_AddLink('所有产品', 'Custom007!', ll_parent)

ll_parent = uo_xplistbar.of_AddGroup('订单管理', '')
uo_xplistbar.of_AddLink('进行中订单', 'Custom009!', ll_parent)
uo_xplistbar.of_AddLink('已经成订单', 'Custom010!', ll_parent)
uo_xplistbar.of_AddLink('返修订单', 'Custom011!', ll_parent)


ll_parent = uo_xplistbar.of_AddGroup('报表查看', 'calendar.ico')
uo_xplistbar.of_AddLink('库存报表', 'Custom016!', ll_parent)
uo_xplistbar.of_AddLink('销售报表', 'Custom017!', ll_parent)
uo_xplistbar.of_AddLink('营业额统计', 'Custom017!', ll_parent)

ll_parent = uo_xplistbar.of_AddGroup('系统设置', '')
uo_xplistbar.of_AddLink('用户管理', 'Custom018!', ll_parent)
uo_xplistbar.of_AddLink('系统属性', 'Custom019!', ll_parent)
uo_xplistbar.of_AddLink('修改密码', 'Custom020!', ll_parent)
uo_xplistbar.of_AddLink('数据同步', 'Custom021!', ll_parent)


//Tab Control
uo_tabcontrol.of_AddImage('SQL!')
uo_tabcontrol.of_AddImage('Custom001!')
uo_tabcontrol.of_OpenTab(iuo_home, '首页',0)
//uo_tabcontrol.of_OpenTab(iuo_2, 'Statictext',2)
//uo_tabcontrol.of_OpenTab(iuo_3, 'Shortcutbar',2)
//uo_tabcontrol.of_OpenTab(iuo_4, 'Buttonlistbar',0)
//uo_tabcontrol.of_OpenTab(iuo_5, 'Result 4 With longer label',2)

uo_tabcontrol.of_SetTextColor(4,RGB(255,0,0))
uo_tabcontrol.of_SelectTab(1)
uo_tabcontrol.of_SetStyle(uo_tabcontrol.VS2005)

end event

event resize;
uo_tabcontrol.Width = this.WorkSpaceWidth() - (uo_tabcontrol.X + 4)

uo_xplistbar.Height  = this.WorkSpaceHeight() - (uo_xplistbar.Y  + 74)
uo_tabcontrol.Height = this.WorkSpaceHeight() - (uo_tabcontrol.Y + 74)
end event

type uo_xplistbar from u_cst_xplistbar within w_main
event destroy ( )
integer width = 1134
integer height = 1844
integer taborder = 40
end type

on uo_xplistbar.destroy
call u_cst_xplistbar::destroy
end on

event itemselected;call super::itemselected;//MessageBox(as_group, as_item)

int tabIndex;
tabIndex=uo_tabcontrol.of_gettabcount();

if as_item='产品销售' then
	
	f_open_tab(iuo_2,'产品销售')
	
elseif as_item='添加产品'  then
	
	integer li_return
	try   
		
		//w_product_edit  m_window
		
		//m_window =create w_product_edit
		
		open(w_product_edit)
		/**
		li_return =11// OpenSheetWithParm(m_window, "MA",    w_main, 2, Original!) 
		if IsNull(li_return) then        
			MessageBox ("Failure", "Null argument provided")  
		elseif li_return= 1 then        
			MessageBox ("Success", "Sheet opened.")  
		else          
			MessageBox ("Failure", "Sheet open failed.")  
		end if
		****/
	catch (runtimeerror rt)   
		Messagebox("Failure", "Sheet open failed. "       + rt.getmessage())
		//Handle the error
	end try
	
elseif 	 as_item='产品分类'  then
	
	f_open_tab(iuo_cat2,'产品分类')
	
elseif 	 as_item='所有产品'  then
	
	f_open_tab(iuo_1,'所有产品')
	
else  
	
	f_open_tab(iuo_2,'其他')

end if



end event

type uo_tabcontrol from u_cst_tabcontrol within w_main
event destroy ( )
integer x = 1147
integer width = 2153
integer height = 1844
integer taborder = 40
end type

on uo_tabcontrol.destroy
call u_cst_tabcontrol::destroy
end on

event tabclosing;call super::tabclosing;IF index = 1 THEN
	MessageBox('tabclosing event',"You can't close the first tab.")
	RETURN 0 //Prevent tab from closing
END IF

Return 1

end event

