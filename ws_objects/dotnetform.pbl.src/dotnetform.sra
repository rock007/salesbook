$PBExportHeader$dotnetform.sra
$PBExportComments$Generated Application Object
forward
global type dotnetform from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type dotnetform from application
string appname = "dotnetform"
end type
global dotnetform dotnetform

on dotnetform.create
appname="dotnetform"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on dotnetform.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open (w_main)
end event

