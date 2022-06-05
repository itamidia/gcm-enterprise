/*------------------------------------------------------------*/
/*   Esquema para a criação do banco de dados da aplicação    */
/*                    DataBase6_PRODUCTION                    */
/*------------------------------------------------------------*/
SET sql_mode = 'ANSI_QUOTES';

/*------------------------------------------------------------*/
/*        Criação de procedure para exclusão de objetos       */
/*------------------------------------------------------------*/
DELIMITER ^

DROP PROCEDURE IF EXISTS DROP_FOREIGNKEY ^
CREATE PROCEDURE DROP_FOREIGNKEY(IN P_TABLE_NAME VARCHAR(255), IN P_CONSTRAINT_NAME VARCHAR(255))
SQL SECURITY INVOKER
BEGIN
	DECLARE TOT INT;
	SELECT COUNT(*) INTO TOT FROM information_schema.TABLE_CONSTRAINTS WHERE CONSTRAINT_SCHEMA = DATABASE() AND TABLE_NAME = P_TABLE_NAME AND CONSTRAINT_NAME = P_CONSTRAINT_NAME;
	If (Tot > 0) Then
		SET @cmd = CONCAT('ALTER TABLE `', P_TABLE_NAME, '` DROP FOREIGN KEY `', P_CONSTRAINT_NAME, '`');
		PREPARE querycmd from @cmd;
		EXECUTE querycmd;
		DEALLOCATE PREPARE querycmd;
	END IF;
END;
^

DROP FUNCTION IF EXISTS HAS_TRIGGER ^
CREATE FUNCTION HAS_TRIGGER(P_TABLE_NAME VARCHAR(255), P_TRIGGER_NAME VARCHAR(255)) RETURNS INT
BEGIN
	DECLARE TOT INT;
	SELECT COUNT(*) INTO TOT FROM information_schema.TRIGGERS WHERE TRIGGER_SCHEMA = DATABASE() AND EVENT_OBJECT_TABLE = P_TABLE_NAME AND TRIGGER_NAME = P_TRIGGER_NAME;
	RETURN TOT;
END;
^

DELIMITER ;

/*------------------------------------------------------------*/
/*        Exclusão de Triggers/Foreign Keys constraints       */
/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/*                     Exclusão de Views                      */
/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/*                     Exclusão de tabelas                    */
/*------------------------------------------------------------*/

DROP TABLE IF EXISTS "log_bairro";
DROP TABLE IF EXISTS "log_controle";
DROP TABLE IF EXISTS "log_cpc";
DROP TABLE IF EXISTS "log_faixa_bairro";
DROP TABLE IF EXISTS "log_faixa_cpc";
DROP TABLE IF EXISTS "log_faixa_localidade";
DROP TABLE IF EXISTS "log_faixa_uf";
DROP TABLE IF EXISTS "log_faixa_uop";
DROP TABLE IF EXISTS "log_grande_usuario";
DROP TABLE IF EXISTS "log_localidade";
DROP TABLE IF EXISTS "log_logradouro";
DROP TABLE IF EXISTS "log_tipo_logr";
DROP TABLE IF EXISTS "log_unid_oper";
/*------------------------------------------------------------*/
/*                     Criação das tabelas                    */
/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     log_bairro     */
/*------------------------------------------------------------*/

 CREATE TABLE "log_bairro"(
	"bai_nu_sequencial"                    bigint               NOT NULL AUTO_INCREMENT	,INDEX("bai_nu_sequencial"),
	"ufe_sg"                               varchar (2)          NULL,
	"loc_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"bai_no"                               varchar (72)         NULL,
	"bai_no_abrev"                         varchar (36)         NULL,
		CONSTRAINT "PK_LOG_BAIRRO" PRIMARY KEY 
		(
			"bai_nu_sequencial"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      log_controle      */
/*------------------------------------------------------------*/

 CREATE TABLE "log_controle"(
	"versao"                               varchar (4)          NULL,
	"data"                                 datetime             NULL,
	"compl1"                               varchar (50)         NULL
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   log_cpc   */
/*------------------------------------------------------------*/

 CREATE TABLE "log_cpc"(
	"cpc_nu_sequencial"                    bigint               DEFAULT 0 NOT NULL,
	"ufe_sg"                               varchar (2)          NULL,
	"loc_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"cep"                                  varchar (16)         NULL,
	"cpc_no"                               varchar (96)         NULL,
	"cpc_endereco"                         varchar (108)        NULL,
	"cpc_tipo"                             varchar (2)          NULL,
	"cpc_abrangencia"                      varchar (80)         NULL,
	"temp"                                 varchar (8)          NULL,
		CONSTRAINT "PK_LOG_CPC" PRIMARY KEY 
		(
			"cpc_nu_sequencial"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        log_faixa_bairro        */
/*------------------------------------------------------------*/

 CREATE TABLE "log_faixa_bairro"(
	"bai_nu_sequencial"                    bigint               DEFAULT 0 NOT NULL,
	"fcb_nu_ordem"                         bigint               DEFAULT 0 NOT NULL,
	"fcb_rad_ini"                          varchar (5)          NULL,
	"fcb_suf_ini"                          varchar (3)          NULL,
	"fcb_rad_fim"                          varchar (5)          NULL,
	"fcb_suf_fim"                          varchar (3)          NULL,
		CONSTRAINT "PK_LOG_FAIXA_BAIRRO" PRIMARY KEY 
		(
			"bai_nu_sequencial","fcb_nu_ordem"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      log_faixa_cpc      */
/*------------------------------------------------------------*/

 CREATE TABLE "log_faixa_cpc"(
	"cpc_nu_sequencial"                    bigint               DEFAULT 0 NOT NULL,
	"cpc_nu_inicial"                       bigint               DEFAULT 0 NOT NULL,
	"cpc_nu_final"                         bigint               DEFAULT 0 NULL,
		CONSTRAINT "PK_LOG_FAIXA_CPC" PRIMARY KEY 
		(
			"cpc_nu_sequencial","cpc_nu_inicial"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          log_faixa_localidade          */
/*------------------------------------------------------------*/

 CREATE TABLE "log_faixa_localidade"(
	"loc_nu_sequencial"                    bigint               DEFAULT 0 NOT NULL,
	"loc_rad1_ini"                         varchar (5)          NULL,
	"loc_suf1_ini"                         varchar (3)          NULL,
	"loc_rad1_fim"                         varchar (5)          NULL,
	"loc_suf1_fim"                         varchar (3)          NULL,
	"loc_rad2_ini"                         varchar (5)          NULL,
	"loc_suf2_ini"                         varchar (3)          NULL,
	"loc_rad2_fim"                         varchar (5)          NULL,
	"loc_suf2_fim"                         varchar (3)          NULL,
		CONSTRAINT "PK_LOG_FAIXA_LOCALIDADE" PRIMARY KEY 
		(
			"loc_nu_sequencial"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      log_faixa_uf      */
/*------------------------------------------------------------*/

 CREATE TABLE "log_faixa_uf"(
	"ufe_sg"                               varchar (2)          NOT NULL,
	"ufe_no"                               varchar (72)         NULL,
	"ufe_rad1_ini"                         varchar (5)          NULL,
	"ufe_suf1_ini"                         varchar (3)          NULL,
	"ufe_rad1_fim"                         varchar (5)          NULL,
	"ufe_suf1_fim"                         varchar (3)          NULL,
	"ufe_rad2_ini"                         varchar (5)          NULL,
	"ufe_suf2_ini"                         varchar (3)          NULL,
	"ufe_rad2_fim"                         varchar (5)          NULL,
	"ufe_suf2_fim"                         varchar (3)          NULL,
		CONSTRAINT "PK_LOG_FAIXA_UF" PRIMARY KEY 
		(
			"ufe_sg"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      log_faixa_uop      */
/*------------------------------------------------------------*/

 CREATE TABLE "log_faixa_uop"(
	"uop_nu_sequencial"                    bigint               DEFAULT 0 NOT NULL,
	"fnc_nu_inicial"                       bigint               DEFAULT 0 NOT NULL,
	"fnc_nu_final"                         bigint               DEFAULT 0 NULL,
	"fnc_in_tipo"                          varchar (255)        NULL,
		CONSTRAINT "PK_LOG_FAIXA_UOP" PRIMARY KEY 
		(
			"uop_nu_sequencial","fnc_nu_inicial"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         log_grande_usuario         */
/*------------------------------------------------------------*/

 CREATE TABLE "log_grande_usuario"(
	"gru_nu_sequencial"                    bigint               DEFAULT 0 NOT NULL,
	"ufe_sg"                               varchar (2)          NULL,
	"loc_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"log_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"bai_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"gru_no"                               varchar (96)         NULL,
	"cep"                                  varchar (16)         NULL,
	"gru_endereco"                         varchar (200)        NULL,
	"temp"                                 varchar (8)          NULL,
		CONSTRAINT "PK_LOG_GRANDE_USUARIO" PRIMARY KEY 
		(
			"gru_nu_sequencial"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       log_localidade       */
/*------------------------------------------------------------*/

 CREATE TABLE "log_localidade"(
	"loc_nu_sequencial"                    bigint               DEFAULT 0 NOT NULL,
	"loc_nosub"                            varchar (50)         NULL,
	"loc_no"                               varchar (60)         NULL,
	"cep"                                  varchar (16)         NULL,
	"ufe_sg"                               varchar (2)          NULL,
	"loc_in_situacao"                      bigint               DEFAULT 0 NULL,
	"loc_in_tipo_localidade"               varchar (1)          NULL,
	"loc_nu_sequencial_sub"                bigint               DEFAULT 0 NULL,
	"temp"                                 varchar (8)          NULL,
		CONSTRAINT "PK_LOG_LOCALIDADE" PRIMARY KEY 
		(
			"loc_nu_sequencial"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       log_logradouro       */
/*------------------------------------------------------------*/

 CREATE TABLE "log_logradouro"(
	"log_nu_sequencial"                    bigint               NOT NULL AUTO_INCREMENT	,INDEX("log_nu_sequencial"),
	"ufe_sg"                               varchar (2)          NULL,
	"loc_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"log_no"                               varchar (70)         NULL,
	"log_nome"                             varchar (125)        NULL,
	"bai_nu_sequencial_ini"                bigint               DEFAULT 0 NULL,
	"cep"                                  varchar (16)         NULL,
	"log_tipo_logradouro"                  varchar (72)         NULL,
	"log_no_sem_acento"                    varchar (70)         NULL,
	"temp"                                 varchar (8)          NULL,
		CONSTRAINT "PK_LOG_LOGRADOURO" PRIMARY KEY 
		(
			"log_nu_sequencial"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      log_tipo_logr      */
/*------------------------------------------------------------*/

 CREATE TABLE "log_tipo_logr"(
	"tipologradouro"                       varchar (10)         NULL
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      log_unid_oper      */
/*------------------------------------------------------------*/

 CREATE TABLE "log_unid_oper"(
	"uop_nu_sequencial"                    bigint               DEFAULT 0 NOT NULL,
	"ufe_sg"                               varchar (2)          NULL,
	"loc_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"log_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"bai_nu_sequencial"                    bigint               DEFAULT 0 NULL,
	"uop_no"                               varchar (100)        NULL,
	"cep"                                  varchar (16)         NULL,
	"uop_endereco"                         varchar (200)        NULL,
	"uop_in_cp"                            varchar (1)          NULL,
	"temp"                                 varchar (8)          NULL,
		CONSTRAINT "PK_LOG_UNID_OPER" PRIMARY KEY 
		(
			"uop_nu_sequencial"
		) 
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      bairro_por_UF      */
/*------------------------------------------------------------*/

 CREATE VIEW "bairro_por_UF"AS(
select `log_bairro`.`bai_nu_sequencial`, `log_bairro`.`ufe_sg`, `log_bairro`.`loc_nu_sequencial`, `log_bairro`.`bai_no`, `log_bairro`.`bai_no_abrev` from `log_bairro`
 where (`log_bairro`.`loc_nu_sequencial` = 9277)  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*          logradouro_por_cidade          */
/*------------------------------------------------------------*/

 CREATE VIEW "logradouro_por_cidade"AS(
select `log_logradouro`.`log_nu_sequencial`, `log_logradouro`.`ufe_sg`, `log_logradouro`.`loc_nu_sequencial`, `log_logradouro`.`log_no`, `log_logradouro`.`log_nome`, `log_logradouro`.`bai_nu_sequencial_ini`, `log_logradouro`.`cep`, `log_logradouro`.`log_tipo_logradouro`, `log_logradouro`.`log_no_sem_acento`, `log_logradouro`.`temp` from `log_logradouro`
 where (`log_logradouro`.`loc_nu_sequencial` = 9277)  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      cidade_por_uf      */
/*------------------------------------------------------------*/

 CREATE VIEW "cidade_por_uf"AS(
select `log_localidade`.`loc_nu_sequencial`, `log_localidade`.`loc_nosub`, `log_localidade`.`loc_no`, `log_localidade`.`cep`, `log_localidade`.`ufe_sg`, `log_localidade`.`loc_in_situacao`, `log_localidade`.`loc_in_tipo_localidade`, `log_localidade`.`loc_nu_sequencial_sub`, `log_localidade`.`temp` from `log_localidade`
 where (`log_localidade`.`ufe_sg` = 'SP')  
);

/*------------------------------------------------------------*/
/*       Exclusão de procedure para exclusão de objetos       */
/*------------------------------------------------------------*/

DROP PROCEDURE IF EXISTS DROP_TRIGGERS;
DROP PROCEDURE IF EXISTS DROP_FOREIGNKEY;
DROP FUNCTION IF EXISTS HAS_TRIGGER;
