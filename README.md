# SQL Server Identify new Customer base 
## This is a project, conteining 3 stored procedures that check the main table with refresh info about status (date) of clients and update our crm tables with data about all client base

## Use
*  Open SSMS and connect to your SQL Server instance;
*  Run the script in the provide [script-create-main.sql](script-create-main.sql) file in your database. The script will create a stored procedure with SP_AUDITPROCEDURECARTEIRAMAIN object name;
*    About that SP: The script will truncate the table TB_MIS_LOG_CARGA (columns: ID_LOG, ID_CEDENTE, NM_CEDENTE, CONT_DT_CAD, FLAG_INSERT, FLAG_UPDATE, CAMPO1) and will insert information returned on databases tables that are updated by other company area (Processing) after processing the load made avaliable by the customer;
