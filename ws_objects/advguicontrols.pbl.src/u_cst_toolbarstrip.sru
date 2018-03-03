﻿$PBExportHeader$u_cst_toolbarstrip.sru
forward
global type u_cst_toolbarstrip from u_canvas
end type
type st_1 from statictext within u_cst_toolbarstrip
end type
end forward

global type u_cst_toolbarstrip from u_canvas
integer width = 498
integer height = 104
event ue_buttonclicked ( string as_button )
event ue_mousemove ( string as_button,  integer ai_xpos,  integer ai_ypos )
event ue_mouseenter ( string as_button )
event ue_mouseleave ( string as_button )
st_1 st_1
end type
global u_cst_toolbarstrip u_cst_toolbarstrip

type prototypes
PUBLIC FUNCTION Long SetParent(Long lChild, Long lParent) LIBRARY "user32.dll"
end prototypes

type variables
CONSTANT Long BLUE = RGB(185,210,248)
CONSTANT Long SILVER = RGB(232,232,240)
CONSTANT Long OLIVE = RGB(234,234,207)
CONSTANT Long CLASSIC = RGB(242,243,246)
CONSTANT Long DEFAULT = 0

CONSTANT Long LINK = 1
CONSTANT Long LABEL = 2
CONSTANT Long LINE = 3

CONSTANT Long XP = 0
CONSTANT Long VISTAEMBOSSED = 1
CONSTANT Long VISTAORIGINAL = 2
CONSTANT Long VISTAGLASS = 3
CONSTANT Long CUSTOM = 4

Long il_CurrentStyle = XP
Long il_CurrentTheme = BLUE

Boolean ib_displaytext = FALSE
Boolean ib_displayborder = TRUE

u_cst_toolbarstripitem iuo_items[]

window iw_parent
n_cst_toolbarstrip_gradient in_Gradient

end variables

forward prototypes
public function integer of_settheme (long al_color)
public function integer of_settheme (string as_color)
public function integer of_getwindow ()
public function integer of_reorganize ()
public function integer of_additem (string as_text, string as_image)
public function integer of_addseparator ()
public function integer of_displaytext (boolean ab_display)
public function long of_getcolor (string as_color)
public function integer of_displayborder (boolean ab_border)
public function integer of_addobject (string as_text, dragobject ado_object)
public function integer of_setenabled (string as_item, boolean ab_switch)
public function integer of_setstyle (long al_style)
public function integer of_setimage (string as_item, string as_image)
public function string of_getimage (string as_item)
end prototypes

event ue_buttonclicked(string as_button);// button item clicked on

end event

event ue_mousemove(string as_button, integer ai_xpos, integer ai_ypos);// mouse moved over button item

end event

event ue_mouseenter(string as_button);// mouse entered button item

end event

event ue_mouseleave(string as_button);// mouse leaving button item

end event

public function integer of_settheme (long al_color);Long ll_index, ll_loop

il_currenttheme = al_color

SetRedraw(TRUE)

RETURN 1
end function

public function integer of_settheme (string as_color);CHOOSE CASE Upper(as_color)
	CASE 'BLUE'
		of_SetTheme(BLUE)
	CASE 'SILVER'
		of_SetTheme(SILVER)
	CASE 'OLIVE'
		of_SetTheme(OLIVE)
	CASE 'CLASSIC'
		of_SetTheme(CLASSIC)
	CASE 'DEFAULT'
		of_SetTheme(DEFAULT)
	CASE ELSE
		of_SetTheme(CLASSIC)
END CHOOSE
		
RETURN 1
end function

public function integer of_getwindow ();PowerObject	lpo_parent
Window lw_window

IF IsValid(iw_parent) THEN RETURN 0

// loop thru parents until a window is found
lpo_parent = GetParent()
Do While lpo_parent.TypeOf() <> Window! and IsValid(lpo_parent)
	lpo_parent = lpo_parent.GetParent()
Loop

// set return to the window or null if not found
If IsValid (lpo_parent) Then
	lw_window = lpo_parent
Else
	SetNull(lw_window)
End If

iw_parent = lw_window

RETURN 1
end function

public function integer of_reorganize ();Long ll_index, ll_count, ll_loop, ll_item, ll_width

SetRedraw(FALSE)

ll_count = UpperBound(iuo_items)
ll_width = 8

FOR ll_index = 1 TO ll_count
	
	iuo_items[ll_index].X = ll_width
	
	ll_width = ll_width + iuo_items[ll_index].Width + 4
NEXT

SetRedraw(TRUE)

RETURN 1
end function

public function integer of_additem (string as_text, string as_image);Long ll_index, ll_count, ll_loop, ll_item, ll_width
u_cst_toolbarstripbutton luo_item

SetRedraw(FALSE)

of_GetWindow()

ll_item = UpperBound(iuo_items) + 1

iw_parent.OpenUserObject(luo_item)

iuo_items[ll_item] = luo_item

SetParent(Handle(iuo_items[ll_item]), Handle(THIS))

ll_count = ll_item - 1

FOR ll_index = 1 TO ll_count
	ll_width = ll_width + iuo_items[ll_index].Width
NEXT

luo_item.of_SetText(as_text)
luo_item.of_SetImage(as_image)
luo_item.Y = 6
luo_item.of_DisplayText(ib_displaytext)

IF ll_item = 1 THEN	
	luo_item.X = 8
ELSE
	luo_item.X = ll_width + 8
END IF

luo_item.of_SetParent(THIS)

SetRedraw(TRUE)

RETURN ll_item
end function

public function integer of_addseparator ();Long ll_index, ll_count, ll_loop, ll_item, ll_width
u_cst_toolbarstripseparator luo_item

SetRedraw(FALSE)

of_GetWindow()

ll_item = UpperBound(iuo_items) + 1

iw_parent.OpenUserObject(luo_item)

iuo_items[ll_item] = luo_item

SetParent(Handle(iuo_items[ll_item]), Handle(THIS))

ll_count = ll_item - 1

FOR ll_index = 1 TO ll_count
	ll_width = ll_width + iuo_items[ll_index].Width
NEXT

luo_item.Y = 6

IF ll_item = 1 THEN	
	luo_item.X = 8
ELSE
	luo_item.X = ll_width + 9
END IF

luo_item.of_SetParent(THIS)

SetRedraw(TRUE)

RETURN ll_item
end function

public function integer of_displaytext (boolean ab_display);Long ll_index, ll_count

ll_count = UpperBound(iuo_items)

FOR ll_index = 1 TO ll_count
	iuo_items[ll_index].of_DisplayText(ab_display)
NEXT

RETURN 1
end function

public function long of_getcolor (string as_color);Long ll_color

CHOOSE CASE Upper(as_color)
	CASE "BORDER"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(4,56,148)
			CASE SILVER
				ll_color = RGB(112,111,145)
			CASE OLIVE
				ll_color = RGB(99,122,68)
			CASE CLASSIC
				ll_color = RGB(128,128,128)
		END CHOOSE	
	CASE "BACKGROUND1"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(221,236,254)
			CASE SILVER
				ll_color = RGB(243,244,250)
			CASE OLIVE
				ll_color = RGB(244,247,222)
			CASE CLASSIC
				ll_color = RGB(245,244,242)
		END CHOOSE
	CASE "BACKGROUND2"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(129,169,226)
			CASE SILVER
				ll_color = RGB(153,151,181)
			CASE OLIVE
				ll_color = RGB(183,198,145)
			CASE CLASSIC
				ll_color = RGB(213,210,202)
		END CHOOSE
	CASE "HIGHLIGHT1"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(255,244,204)
			CASE SILVER
				ll_color = RGB(255,244,204)
			CASE OLIVE
				ll_color = RGB(255,244,204)
			CASE CLASSIC
				ll_color = RGB(182,189,210)
		END CHOOSE
	CASE "HIGHLIGHT2"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(255,208,145)
			CASE SILVER
				ll_color = RGB(255,208,145)
			CASE OLIVE
				ll_color = RGB(255,208,145)
			CASE CLASSIC
				ll_color = RGB(182,189,210)
		END CHOOSE
	CASE "HIGHLIGHTBORDER"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(0,0,128)
			CASE SILVER
				ll_color = RGB(75,75,111)
			CASE OLIVE
				ll_color = RGB(63,93,56)
			CASE CLASSIC
				ll_color = RGB(10,36,106)
		END CHOOSE
	CASE "SELECTED1"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(254,145,78)
			CASE SILVER
				ll_color = RGB(254,145,78)
			CASE OLIVE
				ll_color = RGB(254,145,78)
			CASE CLASSIC
				ll_color = RGB(133,146,181)
		END CHOOSE
	CASE "SELECTED2"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(255,211,142)
			CASE SILVER
				ll_color = RGB(255,211,142)
			CASE OLIVE
				ll_color = RGB(255,211,142)
			CASE CLASSIC
				ll_color = RGB(133,146,181)
		END CHOOSE
	CASE "SEPARATOR"
		CHOOSE CASE il_CurrentTheme
			CASE BLUE
				ll_color = RGB(106,140,203)
			CASE SILVER
				ll_color = RGB(110,109,143)
			CASE OLIVE
				ll_color = RGB(96,128,88)
			CASE CLASSIC
				ll_color = RGB(166,166,166)
		END CHOOSE
END CHOOSE

RETURN ll_color
end function

public function integer of_displayborder (boolean ab_border);ib_displayborder = ab_border

SetRedraw(TRUE)

RETURN 1
end function

public function integer of_addobject (string as_text, dragobject ado_object);Long ll_index, ll_count, ll_loop, ll_item, ll_width
u_cst_toolbarstripbutton luo_item

SetRedraw(FALSE)

of_GetWindow()

ll_item = UpperBound(iuo_items) + 1

iw_parent.OpenUserObject(luo_item)

iuo_items[ll_item] = luo_item

SetParent(Handle(ado_object), Handle(luo_item))
SetParent(Handle(luo_item), Handle(THIS))

ll_count = ll_item - 1

FOR ll_index = 1 TO ll_count
	ll_width = ll_width + iuo_items[ll_index].Width
NEXT

luo_item.of_SetText(as_text)
luo_item.Y = 6
luo_item.of_DisplayText(ib_displaytext)
luo_item.of_SetType(luo_item.OBJECT)
luo_item.of_SetObject(ado_object)
ado_object.Y = 2
ado_object.X = 0

IF ll_item = 1 THEN	
	luo_item.X = 8
ELSE
	luo_item.X = ll_width + 8
END IF

luo_item.of_SetParent(THIS)

SetRedraw(TRUE)

RETURN ll_item
end function

public function integer of_setenabled (string as_item, boolean ab_switch);Long ll_index, ll_count

ll_count = UpperBound(iuo_items)

FOR ll_index = 1 TO ll_count
	
	IF Upper(as_item) = Upper(iuo_items[ll_index].of_GetText()) THEN
		iuo_items[ll_index].of_SetEnabled(ab_switch)
	END IF
	
NEXT

RETURN 1
end function

public function integer of_setstyle (long al_style);Long ll_index, ll_count

il_CurrentStyle = al_style

ll_count = UpperBound(iuo_items)

FOR ll_index = 1 TO ll_count
	
	iuo_items[ll_index].of_SetStyle(il_CurrentStyle)
	
NEXT

SetRedraw(TRUE)

RETURN 1
end function

public function integer of_setimage (string as_item, string as_image);Long ll_index, ll_count

ll_count = UpperBound(iuo_items)

FOR ll_index = 1 TO ll_count
	
	IF Upper(as_item) = Upper(iuo_items[ll_index].of_GetText()) THEN
		iuo_items[ll_index].of_SetImage(as_image)
	END IF
	
NEXT

RETURN 1
end function

public function string of_getimage (string as_item);Long ll_index, ll_count

ll_count = UpperBound(iuo_items)

FOR ll_index = 1 TO ll_count
	
	IF Upper(as_item) = Upper(iuo_items[ll_index].of_GetText()) THEN
		RETURN iuo_items[ll_index].of_GetImage()
	END IF
	
NEXT

RETURN ''
end function

on u_cst_toolbarstrip.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on u_cst_toolbarstrip.destroy
call super::destroy
destroy(this.st_1)
end on

event onpaint;call super::onpaint;in_Gradient.of_SetHDC(hdc)

in_Gradient.of_VerticalGradient (of_GetColor("BACKGROUND1"), of_GetColor("BACKGROUND2"), THIS,ib_displayborder,of_GetColor("BORDER"), il_CurrentStyle)

RETURN 1
end event

event destructor;call super::destructor;Long ll_index, ll_count

ll_count = UpperBound(iuo_items)

FOR ll_index = 1 TO ll_count
	IF IsValid(iuo_items[ll_index]) THEN
		SetParent(Handle(iuo_items[ll_index]), Handle(iw_parent))
		iw_parent.CloseUserObject(iuo_items[ll_index])
	END IF
	
NEXT
end event

event constructor;call super::constructor;Long ll_color1, ll_color2, ll_index
n_cst_theme lnv_Theme
message l_message

l_message = CREATE Message
l_message.Handle = Message.Handle
l_message.Number = Message.Number
l_message.WordParm = Message.WordParm
l_message.LongParm = Message.LongParm
l_message.DoubleParm = Message.DoubleParm
l_message.StringParm = Message.StringParm
l_message.PowerObjectParm = Message.PowerObjectParm
l_message.Processed = Message.Processed
l_message.ReturnValue = Message.ReturnValue

If lnv_Theme.of_IsAppThemed() And lnv_Theme.of_IsWindowsXp() Then
	ll_Color1 = lnv_Theme.of_GetColor( 1, 1, 3821 )
	ll_Color2 = lnv_Theme.of_GetColor( 1, 1, 3805 )
	Choose Case ll_Color1
		Case 15029248	// Blue
			of_SetTheme(BLUE)
		Case 12493732	//	Silver
			of_SetTheme(SILVER)
		Case 8829098	// olive green
			of_SetTheme(OLIVE)
		Case Else
			of_SetTheme(CLASSIC)
	End Choose
Else
	of_SetTheme(CLASSIC)
End If

TriggerEvent('resize')

Message.Handle = l_message.Handle
Message.Number = l_message.Number
Message.WordParm = l_message.WordParm
Message.LongParm = l_message.LongParm
Message.DoubleParm = l_message.DoubleParm
Message.StringParm = l_message.StringParm
Message.PowerObjectParm = l_message.PowerObjectParm
Message.Processed = l_message.Processed
Message.ReturnValue = l_message.ReturnValue
DESTROY l_message
end event

type st_1 from statictext within u_cst_toolbarstrip
integer width = 10002
integer height = 10000
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 16777215
long backcolor = 8421376
string text = "   Toolbar Strip"
boolean focusrectangle = false
end type

event constructor;Hide()
end event

