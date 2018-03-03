$PBExportHeader$salemanmis.sra
$PBExportComments$Generated Application Object
forward
global type salemanmis from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type salemanmis from application
string appname = "salemanmis"
end type
global salemanmis salemanmis

type variables
Boolean ib_preview
u_cst_tab1 iuo_1
//u_cst_test2 iuo_2
//u_cst_test3 iuo_3
//u_cst_test4 iuo_4
//u_cst_test5 iuo_5

end variables

on salemanmis.create
appname="salemanmis"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on salemanmis.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;
uo_db_connect conn;

conn=create uo_db_connect;

if conn.of_getconnection( ) <>  1 then
	
	
	messagebox("连接失败！","信息");
	
//	halt;
	
end if

open(w_main);

end event

