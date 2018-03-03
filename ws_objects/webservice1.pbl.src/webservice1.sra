$PBExportHeader$webservice1.sra
$PBExportComments$Generated Application Object
forward
global type webservice1 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type webservice1 from application
string appname = "webservice1"
end type
global webservice1 webservice1

on webservice1.create
appname = "webservice1"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on webservice1.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

