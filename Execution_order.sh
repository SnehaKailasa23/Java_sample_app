. ./Variables
cat {CleanDB.sql,CreateDB.sql,InsertDB.sql,SelectTables.sql}|$sqlplus $db_user_name/$db_password@$db_server
