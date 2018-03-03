﻿$PBExportHeader$advguisample.sra
$PBExportComments$Generated Application Object
forward
global type advguisample from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type advguisample from application
string appname = "advguisample"
end type
global advguisample advguisample

on advguisample.create
appname="advguisample"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on advguisample.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Open(w_main)

end event

