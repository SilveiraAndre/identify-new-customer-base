CREATE TABLE TB_MIS_LOG_CARGA	(
									                ID_LOG			  INT PRIMARY KEY IDENTITY 
								                , ID_CEDENTE		INT 
								                , NM_CEDENTE		VARCHAR(100) 
								                , CONT_DT_CAD		DATETIME 
								                , FLAG_INSERT		BIT 
								                , FLAG_UPDATE   BIT 
								                , CAMPO1			  VARCHAR(100) 
								              )
