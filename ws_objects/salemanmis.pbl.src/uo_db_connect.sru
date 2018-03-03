$PBExportHeader$uo_db_connect.sru
$PBExportComments$数据库连接
forward
global type uo_db_connect from nonvisualobject
end type
end forward

global type uo_db_connect from nonvisualobject
end type
global uo_db_connect uo_db_connect

forward prototypes
public function integer of_getconnection ()
end prototypes

public function integer of_getconnection ();
// Profile mssql
//SQLCA.DBMS = "SNC SQL Native Client(OLE DB)"
//SQLCA.LogPass = "sa"
//SQLCA.ServerName = "ADMIN-PC\SQLEXPRESS"
//SQLCA.LogId = "sa"
//SQLCA.AutoCommit = False
//SQLCA.DBParm = "Provider='SQLNCLI10',TrustedConnection=1,Database='SalemanDB'"

// Profile salesdb_2
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=salesdb;UID=root;PWD=123456'"

connect;

if sqlca.sqlcode <> 0 then
	
	MessageBox ("Sorry! Cannot Connect To Database", sqlca.sqlerrtext)
	
	return -1;
end if



return 1;
end function

on uo_db_connect.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_db_connect.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;//

end event

