
CREATE PROCEDURE [DBO].[SP_AUDITPROCEDURECARTEIRAMAIN] AS 

BEGIN

	SET NOCOUNT ON;
	
	TRUNCATE TABLE TB_MIS_LOG_CARGA; 

	INSERT INTO TB_MIS_LOG_CARGA (ID_CEDENTE, NM_CEDENTE, CONT_DT_CAD, FLAG_INSERT, FLAG_UPDATE, CAMPO1)
	SELECT

		  CED.ID_CEDENTE 
		, CED.NM_CEDENTE 
		, MAX(CONT.DT_CADASTRO)
		, 0 
		, 0 
		, NULL 

	FROM TB_CLIENTE		CLI		WITH(NOLOCK)
	JOIN TB_CONTRATO	CONT		WITH(NOLOCK) ON CLI.ID_CLIENTE = CONT.ID_CLIENTE 
	JOIN TB_DIVIDA		DIV		WITH(NOLOCK) ON CONT.ID_CONTRATO = DIV.ID_CONTRATO 
	JOIN TB_CEDENTE		CED		WITH(NOLOCK) ON CLI.ID_CEDENTE = CED.ID_CEDENTE 
	WHERE
		  CAST(CONT.DT_CADASTRO AS DATE) = CAST(GETDATE() AS DATE) 
	GROUP BY
		  CED.ID_CEDENTE
		, CED.NM_CEDENTE;

	COMMIT; 

END;
