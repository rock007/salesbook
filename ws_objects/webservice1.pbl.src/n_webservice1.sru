$PBExportHeader$n_webservice1.sru
$PBExportComments$Generated Web service object
forward
global type n_webservice1 from nonvisualobject
end type
end forward

global type n_webservice1 from nonvisualobject  descriptor "PB_ObjectCodeAssistants" = "{1E00F051-675A-11D2-BCA5-000086095DDA}" 
end type
global n_webservice1 n_webservice1

on n_webservice1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_webservice1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

