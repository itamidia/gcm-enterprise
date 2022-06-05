/*------------------------------------------------------------*/
/*   Esquema para a criação do banco de dados da aplicação    */
/*                             gcm                            */
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

CALL DROP_FOREIGNKEY('file_proc_disc_prel', 'file_proc_disc_prel_ibfk_1');
CALL DROP_FOREIGNKEY('itens_da_manutencao', 'itens_da_manutencao_ibfk_1');
CALL DROP_FOREIGNKEY('TB_LOGIN_RULE', 'TB_LOGIN_GROUP_RULE');
CALL DROP_FOREIGNKEY('TB_LOGIN_USER', 'TB_LOGIN_GROUP_USER');
/*------------------------------------------------------------*/
/*                     Exclusão de Views                      */
/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/*                     Exclusão de tabelas                    */
/*------------------------------------------------------------*/

DROP TABLE IF EXISTS "file_proc_disc_prel";
DROP TABLE IF EXISTS "itens_da_manutencao";
DROP TABLE IF EXISTS "quadro_risco_autor";
DROP TABLE IF EXISTS "quadro_risco_vitima";
DROP TABLE IF EXISTS "sys_sequencial";
DROP TABLE IF EXISTS "tb_abastecimento";
DROP TABLE IF EXISTS "tb_almoxarifado";
DROP TABLE IF EXISTS "tb_apoio";
DROP TABLE IF EXISTS "tb_apreensao";
DROP TABLE IF EXISTS "tb_apreensoes";
DROP TABLE IF EXISTS "tb_armas";
DROP TABLE IF EXISTS "tb_armas_calibre";
DROP TABLE IF EXISTS "tb_armas_especie";
DROP TABLE IF EXISTS "tb_armas_modelo";
DROP TABLE IF EXISTS "tb_autuacao";
DROP TABLE IF EXISTS "tb_avaliacao_psico";
DROP TABLE IF EXISTS "tb_bol_ocorrencia";
DROP TABLE IF EXISTS "tb_cat_caixa";
DROP TABLE IF EXISTS "tb_classe_delinquente";
DROP TABLE IF EXISTS "tb_cod_ocorrencia";
DROP TABLE IF EXISTS "tb_colaborador";
DROP TABLE IF EXISTS "tb_config";
DROP TABLE IF EXISTS "tb_cursos";
DROP TABLE IF EXISTS "tb_cursos_colaborador";
DROP TABLE IF EXISTS "tb_departamento";
DROP TABLE IF EXISTS "tb_elogios";
DROP TABLE IF EXISTS "tb_entrada";
DROP TABLE IF EXISTS "tb_entrada_armaria";
DROP TABLE IF EXISTS "tb_entrada_itens";
DROP TABLE IF EXISTS "tb_envolvidos";
DROP TABLE IF EXISTS "tb_equipes";
DROP TABLE IF EXISTS "tb_escala_apres";
DROP TABLE IF EXISTS "tb_escolaridade";
DROP TABLE IF EXISTS "tb_escolaridade_colaborador";
DROP TABLE IF EXISTS "tb_especializado";
DROP TABLE IF EXISTS "tb_estoque";
DROP TABLE IF EXISTS "tb_folgas_ferias";
DROP TABLE IF EXISTS "tb_folgas_ferias_colaborador";
DROP TABLE IF EXISTS "tb_fornecedor";
DROP TABLE IF EXISTS "tb_foto_infocrime";
DROP TABLE IF EXISTS "tb_gcm";
DROP TABLE IF EXISTS "tb_gcm_bo";
DROP TABLE IF EXISTS "tb_gcm_elogios";
DROP TABLE IF EXISTS "tb_gcm_rel";
DROP TABLE IF EXISTS "tb_grupo";
DROP TABLE IF EXISTS "tb_grupo_mat_belico";
DROP TABLE IF EXISTS "tb_info_crime";
DROP TABLE IF EXISTS "tb_item_ent_arma";
DROP TABLE IF EXISTS "tb_item_ent_mat_bel";
DROP TABLE IF EXISTS "tb_item_saida_arma";
DROP TABLE IF EXISTS "tb_item_saida_mat_bel";
DROP TABLE IF EXISTS "tb_leis";
DROP TABLE IF EXISTS "tb_liberar_manutencao";
DROP TABLE IF EXISTS "tb_livro_caixa";
DROP TABLE IF EXISTS "TB_LOGIN_GROUP";
DROP TABLE IF EXISTS "TB_LOGIN_RULE";
DROP TABLE IF EXISTS "TB_LOGIN_USER";
DROP TABLE IF EXISTS "tb_manutencao_frota";
DROP TABLE IF EXISTS "tb_mapa_forca";
DROP TABLE IF EXISTS "tb_marcas_mat_belico";
DROP TABLE IF EXISTS "tb_mat_belico";
DROP TABLE IF EXISTS "tb_motivo_talao";
DROP TABLE IF EXISTS "tb_nivel_escolaridade";
DROP TABLE IF EXISTS "tb_nota_culpa";
DROP TABLE IF EXISTS "tb_novidades_efetivo";
DROP TABLE IF EXISTS "tb_oficina";
DROP TABLE IF EXISTS "tb_ordem_servico";
DROP TABLE IF EXISTS "tb_ostensivo_mapa";
DROP TABLE IF EXISTS "tb_passa_armaria";
DROP TABLE IF EXISTS "tb_plantao";
DROP TABLE IF EXISTS "tb_postos_fixos";
DROP TABLE IF EXISTS "tb_postos_fixos_mapa";
DROP TABLE IF EXISTS "tb_prioridade";
DROP TABLE IF EXISTS "tb_proc_admin";
DROP TABLE IF EXISTS "tb_proc_admin_partes";
DROP TABLE IF EXISTS "tb_proc_disc_prel";
DROP TABLE IF EXISTS "tb_registro_ocorrencias";
DROP TABLE IF EXISTS "tb_rel_motomec";
DROP TABLE IF EXISTS "tb_rel_motomec_foto";
DROP TABLE IF EXISTS "tb_saida";
DROP TABLE IF EXISTS "tb_saida_armaria";
DROP TABLE IF EXISTS "tb_saida_itens";
DROP TABLE IF EXISTS "tb_servicos";
DROP TABLE IF EXISTS "tb_setor";
DROP TABLE IF EXISTS "tb_solicitacao_ferias";
DROP TABLE IF EXISTS "tb_status";
DROP TABLE IF EXISTS "tb_status_ocorrencia";
DROP TABLE IF EXISTS "tb_subgrupo";
DROP TABLE IF EXISTS "tb_subgrupo_mat_belico";
DROP TABLE IF EXISTS "tb_taloes";
DROP TABLE IF EXISTS "tb_tipo_folga";
DROP TABLE IF EXISTS "tb_tipo_ocorrencia";
DROP TABLE IF EXISTS "tb_tipos_leis";
DROP TABLE IF EXISTS "tb_troca_oleo";
DROP TABLE IF EXISTS "tb_viaturas";
DROP TABLE IF EXISTS "tb_vitima_maria_da_penha";
DROP TABLE IF EXISTS "tb_vitima_visita";
/*------------------------------------------------------------*/
/*                     Criação das tabelas                    */
/*------------------------------------------------------------*/

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         file_proc_disc_prel         */
/*------------------------------------------------------------*/

 CREATE TABLE "file_proc_disc_prel"(
	"ID_FILE"                              bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_FILE"),
	"PROC_ID"                              bigint               NOT NULL,
	"URL"                                  varchar (255)        NOT NULL,
		CONSTRAINT "PK_FILE_PROC_DISC_PREL" PRIMARY KEY 
		(
			"ID_FILE"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         itens_da_manutencao         */
/*------------------------------------------------------------*/

 CREATE TABLE "itens_da_manutencao"(
	"IT_ID"                                bigint               NOT NULL AUTO_INCREMENT	,INDEX("IT_ID"),
	"ID_MAN_FROTA"                         bigint               NOT NULL,
	"IT_ITEM"                              varchar (50)         NOT NULL,
	"IT_QTDE"                              bigint               NOT NULL,
	"IT_VALOR"                             decimal (10,2)       NOT NULL,
	"IT_MOTIVO_TROCA"                      varchar (50)         NOT NULL,
		CONSTRAINT "PK_ITENS_DA_MANUTENCAO" PRIMARY KEY 
		(
			"IT_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         quadro_risco_autor         */
/*------------------------------------------------------------*/

 CREATE TABLE "quadro_risco_autor"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"N"                                    varchar (10)         NULL,
	"PERGUNTA"                             varchar (150)        NULL,
		CONSTRAINT "PK_QUADRO_RISCO_AUTOR" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         quadro_risco_vitima         */
/*------------------------------------------------------------*/

 CREATE TABLE "quadro_risco_vitima"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"N"                                    varchar (10)         NULL,
	"PERGUNTA"                             varchar (150)        NULL,
		CONSTRAINT "PK_QUADRO_RISCO_VITIMA" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       sys_sequencial       */
/*------------------------------------------------------------*/

 CREATE TABLE "sys_sequencial"(
	"PW_Projeto"                           varchar (10)         NOT NULL,
	"SYS_Tabela"                           varchar (30)         NOT NULL,
	"SYS_Campo"                            varchar (30)         NOT NULL,
	"SYS_Valor"                            varchar (50)         NOT NULL,
	"SYS_ValorAnterior"                    varchar (50)         NOT NULL,
	"SYS_Estacao"                          varchar (50)         NOT NULL,
	"SYS_Identificacao"                    varchar (30)         NOT NULL,
	"SYS_Pendentes"                        bigint               DEFAULT 0 NOT NULL,
		CONSTRAINT "PK_SYS_SEQUENCIAL" PRIMARY KEY 
		(
			"SYS_Tabela","SYS_Campo"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_abastecimento        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_abastecimento"(
	"AB_ID"                                bigint               NOT NULL AUTO_INCREMENT	,INDEX("AB_ID"),
	"AB_VIATURA"                           varchar (10)         NOT NULL,
	"AB_PLACA"                             varchar (7)          DEFAULT '0' NULL,
	"AB_POSTO"                             bigint               DEFAULT 0 NULL,
	"AB_VALOR_LITRO"                       decimal (10,2)       DEFAULT 0.00 NULL,
	"AB_LITROS_ABASTECIDOS"                bigint               DEFAULT 0 NULL,
	"AB_HODOMETRO"                         bigint               DEFAULT 0 NULL,
	"AB_KM"                                bigint               DEFAULT 0 NULL,
	"AB_DATA"                              date                 NULL,
		CONSTRAINT "PK_TB_ABASTECIMENTO" PRIMARY KEY 
		(
			"AB_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_almoxarifado       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_almoxarifado"(
	"ALM_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("ALM_ID"),
	"ALM_DESCRICAO"                        varchar (50)         NOT NULL,
	"ALM_DEPARTAMENTO"                     bigint               DEFAULT 0 NULL,
	"ALM_GRUPO"                            bigint               NULL,
	"ALM_SUBGRUPO"                         bigint               NULL,
	"ALM_MODELO"                           varchar (25)         NULL,
	"ALM_MARCA"                            varchar (25)         NULL,
	"ALM_TIPO"                             varchar (15)         NULL,
	"ALM_FORNECEDOR"                       bigint               DEFAULT 0 NULL,
	"ALM_N_PATRIMONIO"                     bigint               DEFAULT 0 NULL,
	"ALM_REFERENCIA"                       varchar (50)         NULL,
	"ALM_QTDE"                             bigint               DEFAULT 0 NULL,
	"ALM_VALOR"                            decimal (10,2)       DEFAULT 0.00 NULL,
	"ALM_MINIMO"                           bigint               DEFAULT 0 NULL,
	"ALM_MAXIMO"                           bigint               DEFAULT 0 NULL,
	"ALM_FOTO"                             longblob             NULL,
	"ALM_OBSERVACAO"                       text                 NULL,
		CONSTRAINT "PK_TB_ALMOXARIFADO" PRIMARY KEY 
		(
			"ALM_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_apoio    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_apoio"(
	"id"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("id"),
	"bo_id"                                bigint               NULL,
	"viatura"                              bigint               NULL,
		CONSTRAINT "PK_TB_APOIO" PRIMARY KEY 
		(
			"id"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_apreensao      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_apreensao"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"ID_INFO_CRIME"                        bigint               NULL,
	"OBJETO"                               varchar (20)         NULL,
	"DATA"                                 datetime             NULL,
		CONSTRAINT "PK_TB_APREENSAO" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_apreensoes      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_apreensoes"(
	"ID_APREENSOES"                        bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_APREENSOES"),
	"BOL_ID"                               bigint               DEFAULT 0 NULL,
	"APREE_OBJETO"                         varchar (50)         NULL,
	"APREE_QTDE"                           bigint               DEFAULT 0 NULL,
	"APREE_MARCA"                          varchar (30)         NULL,
	"APREE_MODELO"                         varchar (30)         NULL,
	"APREE_NUM_FABRICACAO"                 varchar (20)         NULL,
	"APREE_DESTINO"                        varchar (30)         NULL,
	"APREE_RECEBEDOR"                      varchar (30)         NULL,
	"APREE_LEI"                            varchar (30)         NULL,
	"APRRE_NUM_AUTO"                       varchar (7)          NULL,
	"APREE_NUM_INFRACAO"                   varchar (7)          NULL,
	"APREE_PROPRIETARIO"                   varchar (30)         NULL,
	"APREE_CPF_PROPRIETARIO"               varchar (14)         NULL,
	"APREE_REF_PLACA_COD"                  varchar (15)         NULL,
	"APREE_RESUMO"                         text                 NULL,
	"APREE_DATA"                           datetime             NULL,
		CONSTRAINT "PK_TB_APREENSOES" PRIMARY KEY 
		(
			"ID_APREENSOES"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_armas    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_armas"(
	"ARM_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("ARM_ID"),
	"ARM_NUM_DO_REGISTRO"                  bigint               NOT NULL,
	"ARM_DATA_DE_VENC_REGISTRO"            date                 NULL,
	"ARM_DATA_INDETERMINADO"               varchar (10)         NULL,
	"ARM_RAZAO_SOCIAL"                     varchar (50)         NULL,
	"ARM_CNPJ_CPF"                         varchar (19)         NULL,
	"ARM_CPF"                              varchar (14)         NULL,
	"ARM_NUM_SINARM"                       varchar (17)         NULL,
	"ARM_ESPECIE"                          bigint               NULL,
	"ARM_MARCA"                            varchar (25)         NULL,
	"ARM_MODELO_M"                         bigint               NULL,
	"ARM_NUM_DA_ARMA"                      varchar (10)         NULL,
	"ARM_CALIBRE"                          bigint               NULL,
	"ARM_CAPACIDADE_DE_TIRO"               varchar (10)         NULL,
	"ARM_FUNCIONAMENTO"                    varchar (10)         NULL,
	"ARM_ACABAMENTO"                       varchar (10)         NULL,
	"ARM_QUANTIDADE_CANO"                  bigint               NULL,
	"ARM_COMPRIMENTO_CANO"                 varchar (10)         NULL,
	"ARM_TP_DE_ALMA"                       varchar (10)         NULL,
	"ARM_QT_DE_RAIAS"                      bigint               NULL,
	"ARM_SENTIDO_RAIAS"                    varchar (10)         NULL,
	"ARM_PAIS_DE_FABRICACAO"               varchar (10)         NULL,
	"ARM_STATUS"                           bigint               NULL,
		CONSTRAINT "PK_TB_ARMAS" PRIMARY KEY 
		(
			"ARM_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_armas_calibre        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_armas_calibre"(
	"CAL_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("CAL_ID"),
	"CAL_ID_MODELO"                        bigint               NULL,
	"CAL_DESCRICAO"                        varchar (50)         NULL,
		CONSTRAINT "PK_TB_ARMAS_CALIBRE" PRIMARY KEY 
		(
			"CAL_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_armas_especie        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_armas_especie"(
	"ESP_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("ESP_ID"),
	"ESP_DESCRICAO"                        varchar (50)         NULL,
		CONSTRAINT "PK_TB_ARMAS_ESPECIE" PRIMARY KEY 
		(
			"ESP_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_armas_modelo       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_armas_modelo"(
	"MOD_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("MOD_ID"),
	"MOD_ID_ESPECIE"                       bigint               NULL,
	"MOD_DESCRICAO"                        varchar (50)         NULL,
		CONSTRAINT "PK_TB_ARMAS_MODELO" PRIMARY KEY 
		(
			"MOD_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_autuacao     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_autuacao"(
	"ID_AUTUACAO"                          bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_AUTUACAO"),
	"AUT_NUM_AUTUACAO"                     varchar (7)          NULL,
	"AUT_DATA"                             datetime             NULL,
	"AUT_TIPO_LOGRADOURO"                  varchar (10)         NULL,
	"AUT_LOGRADOURO"                       varchar (50)         NULL,
	"AUT_N_LOGRADOURO"                     bigint               NULL,
	"AUT_BAIRRO"                           varchar (50)         NULL,
	"AUT_CIDADE"                           varchar (50)         NULL,
	"AUT_UF"                               varchar (10)         NULL,
	"AUT_CEP"                              varchar (9)          NULL,
	"AUT_TIPO_ESTABELECIMENTO"             varchar (20)         NULL,
	"AUT_NOME_ESTABELECIMENTO"             varchar (30)         NULL,
	"AUT_PROPRIETARIO"                     varchar (30)         NULL,
	"AUT_RESPONSAVEL"                      varchar (30)         NULL,
	"AUT_CPF"                              varchar (14)         NULL,
	"AUT_AGENTE_FISCALIZADOR"              bigint               NULL,
	"AUT_CNPJ"                             varchar (19)         NULL,
		CONSTRAINT "PK_TB_AUTUACAO" PRIMARY KEY 
		(
			"ID_AUTUACAO"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         tb_avaliacao_psico         */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_avaliacao_psico"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"ID_GCM"                               bigint               NULL,
	"DATA_AVALIACAO"                       datetime             NULL,
	"DATA_PROX_AVALIACAO"                  datetime             NULL,
	"APTIDAO"                              varchar (10)         NULL,
	"RESUMO"                               text                 NULL,
		CONSTRAINT "PK_TB_AVALIACAO_PSICO" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_bol_ocorrencia        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_bol_ocorrencia"(
	"BOL_OCOR_ID"                          bigint               NOT NULL AUTO_INCREMENT	,INDEX("BOL_OCOR_ID"),
	"BOL_NUMERO"                           varchar (14)         DEFAULT '0' NULL,
	"BOL_NUM_TALAO"                        bigint               DEFAULT 0 NOT NULL,
	"BOL_ATENDENTE"                        varchar (30)         DEFAULT '0' NULL,
	"BOL_PRIORIDADE"                       bigint               DEFAULT 0 NULL,
	"BOL_DATA"                             datetime             NOT NULL,
	"BOL_DATA_FIM"                         datetime             NULL,
	"BOL_VIATURA"                          bigint               DEFAULT 0 NOT NULL,
	"BOL_STATUS"                           bigint               DEFAULT 0 NULL,
	"BOL_SOLICITANTE"                      varchar (10)         NULL,
	"BOL_TELEFONE"                         varchar (15)         NULL,
	"BOL_TIPO_LOGRADOURO"                  varchar (10)         NULL,
	"BOL_LOGRADOURO"                       varchar (100)        NULL,
	"BOL_BAIRRO"                           varchar (35)         NULL,
	"BOL_CIDADE"                           varchar (50)         NULL,
	"BOL_UF"                               varchar (10)         NULL,
	"BOL_CEP"                              varchar (9)          NULL,
	"BOL_REFERENCIA"                       varchar (100)        NULL,
	"BOL_NATUREZA"                         varchar (10)         NULL,
	"BOL_NATUREZA_FINAL"                   varchar (10)         NULL,
	"BOL_RESUMO"                           text                 NULL,
	"BOL_HISTORICO"                        text                 NULL,
	"BOL_HISTORICO_FINAL"                  text                 NULL,
		CONSTRAINT "PK_TB_BOL_OCORRENCIA" PRIMARY KEY 
		(
			"BOL_OCOR_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_cat_caixa      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_cat_caixa"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"DESCRICAO"                            varchar (100)        NULL,
		CONSTRAINT "PK_TB_CAT_CAIXA" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_classe_delinquente          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_classe_delinquente"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"ID_INFO_CRIME"                        bigint               NULL,
	"DATA_PRISAO"                          datetime             NULL,
	"BOGM"                                 bigint               NULL,
	"BOPC"                                 bigint               NULL,
	"ARTIGO_CRIMINAL"                      varchar (10)         NULL,
		CONSTRAINT "PK_TB_CLASSE_DELINQUENTE" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_cod_ocorrencia        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_cod_ocorrencia"(
	"OCO_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("OCO_ID"),
	"OCO_CODIGO"                           varchar (10)         NOT NULL,
	"OCO_OCORRENCIA"                       varchar (50)         NULL,
	"OCO_CLASSIFICACAO"                    varchar (35)         NULL,
	"OCO_LEI"                              varchar (50)         NULL,
		CONSTRAINT "PK_TB_COD_OCORRENCIA" PRIMARY KEY 
		(
			"OCO_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_colaborador       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_colaborador"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"STATUS"                               bigint               DEFAULT 0 NOT NULL,
	"NOME"                                 varchar (50)         NOT NULL,
	"RG_FUNCIONAL_PMJ"                     varchar (10)         NULL,
	"RG"                                   varchar (15)         NOT NULL,
	"CPF"                                  varchar (14)         NOT NULL,
	"PAI"                                  varchar (100)        NULL,
	"MAE"                                  varchar (100)        NULL,
	"DATA_NASC"                            date                 NULL,
	"CARTEIRA_TRABALHO"                    varchar (20)         NULL,
	"TITULO_ELEITOR"                       bigint               DEFAULT 0 NULL,
	"CNH"                                  varchar (15)         NULL,
	"CATEG_CNH"                            varchar (10)         NULL,
	"VALIDADE_CNH"                         date                 NULL,
	"DATA_ADMISSAO"                        date                 NULL,
	"DATA_DEMISSAO"                        date                 NULL,
	"FUNCAO"                               varchar (20)         NULL,
	"TIPO_SANGUINEO"                       varchar (10)         NULL,
	"NATURALIDADE"                         varchar (50)         NULL,
	"NACIONALIDADE"                        varchar (50)         NULL,
	"FATOR_RH"                             varchar (10)         NULL,
	"TELEFONE"                             varchar (14)         DEFAULT '0' NULL,
	"CELULAR"                              varchar (15)         DEFAULT '0' NULL,
	"CONTATO"                              varchar (25)         NULL,
	"TIPO_LOGRADOURO"                      varchar (10)         NULL,
	"LOGRADOURO"                           varchar (50)         NULL,
	"NUMERO"                               bigint               NULL,
	"BAIRRO"                               varchar (50)         NULL,
	"CIDADE"                               varchar (50)         NULL,
	"UF"                                   varchar (2)          NULL,
	"CEP"                                  varchar (9)          NULL,
	"EMAIL"                                varchar (50)         NULL,
	"FOTO"                                 longblob             NULL,
	"OBSERVACAO"                           text                 NULL,
		CONSTRAINT "PK_TB_COLABORADOR" PRIMARY KEY 
		(
			"ID","RG","CPF"
		) 
);

 CREATE UNIQUE INDEX "NK_TB_GCM3" ON "tb_colaborador"
	("RG");

 CREATE UNIQUE INDEX "NK_TB_GCM4" ON "tb_colaborador"
	("CPF");

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_config    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_config"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"PREFEITURA"                           varchar (100)        NULL,
	"TIPO_LOGRADOURO"                      varchar (10)         NULL,
	"LOGRADOURO"                           varchar (100)        NULL,
	"BAIRRO"                               varchar (50)         NULL,
	"CIDADE"                               varchar (50)         NULL,
	"UF"                                   varchar (10)         NULL,
	"CEP"                                  varchar (8)          NULL,
	"TELEFONE"                             varchar (14)         NULL,
	"FAX"                                  varchar (14)         NULL,
	"CNPJ"                                 varchar (18)         NULL,
	"FOTO"                                 longblob             NULL,
	"EMAIL"                                varchar (100)        NULL,
	"SITE"                                 varchar (100)        NULL,
	"GUARDA_MUNICIPAL"                     varchar (100)        NULL,
	"GCMP_TIPO_LOGRADOURO"                 varchar (10)         NULL,
	"GCMP_LOGRADOURO"                      varchar (100)        NULL,
	"GCMP_BAIRRO"                          varchar (50)         NULL,
	"GCMP_CIDADE"                          varchar (50)         NULL,
	"GCMP_UF"                              varchar (10)         NULL,
	"GCMP_CEP"                             varchar (8)          NULL,
	"GCMP_TELEFONE"                        varchar (14)         NULL,
	"GCMP_FAX"                             varchar (14)         NULL,
	"GCMP_CNPJ"                            varchar (18)         NULL,
	"GCMP_FOTO"                            longblob             NULL,
	"GCMP_EMAIL"                           varchar (100)        NULL,
	"GCMP_SITE"                            varchar (100)        NULL,
	"CABECALHO"                            text                 NULL,
	"RODAPE"                               text                 NULL,
	"CABECALHO_SECRETARIA"                 text                 NULL,
	"RODAPE_SECRETARIA"                    text                 NULL,
	"CABECALHO_MARIA_PENHA"                text                 NULL,
	"RODAPE_MARIA_PENHA"                   text                 NULL,
	"PARAM_TEMPO_REFRESH"                  bigint               NULL,
		CONSTRAINT "PK_TB_CONFIG" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_cursos    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_cursos"(
	"CUR_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("CUR_ID"),
	"CUR_ID_GCM"                           bigint               NOT NULL,
	"CUR_CURSO"                            varchar (30)         NULL,
	"CUR_INSTITUICAO"                      varchar (50)         NULL,
	"CUR_ANO_INICIO"                       date                 NULL,
	"CUR_ANO_CONCLUSAO"                    date                 NULL,
	"CUR_CARGA_HORARIA"                    bigint               DEFAULT 0 NULL,
	"CUR_CIDADE"                           varchar (50)         NULL,
	"CUR_UF"                               varchar (2)          NULL,
		CONSTRAINT "PK_TB_CURSOS" PRIMARY KEY 
		(
			"CUR_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_cursos_colaborador          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_cursos_colaborador"(
	"CUR_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("CUR_ID"),
	"CUR_ID_COLABORADOR"                   bigint               NOT NULL,
	"CUR_CURSO"                            varchar (30)         NULL,
	"CUR_INSTITUICAO"                      varchar (50)         NULL,
	"CUR_ANO_INICIO"                       date                 NULL,
	"CUR_ANO_CONCLUSAO"                    date                 NULL,
	"CUR_CARGA_HORARIA"                    bigint               DEFAULT 0 NULL,
	"CUR_CIDADE"                           varchar (50)         NULL,
	"CUR_UF"                               varchar (2)          NULL,
		CONSTRAINT "PK_TB_CURSOS_COLABORADOR" PRIMARY KEY 
		(
			"CUR_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_departamento       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_departamento"(
	"DEP_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("DEP_ID"),
	"DEP_DESCRICAO"                        varchar (50)         NULL,
		CONSTRAINT "PK_TB_DEPARTAMENTO" PRIMARY KEY 
		(
			"DEP_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_elogios     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_elogios"(
	"ID_ELOGIO"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ELOGIO"),
	"ELO_PORTARIA"                         varchar (6)          NULL,
	"ELO_DATA"                             datetime             NULL,
	"ELO_NATUREZA"                         varchar (20)         NULL,
	"ELO_DATA_FATO"                        datetime             NULL,
	"ELO_RESUMO"                           text                 NULL,
		CONSTRAINT "PK_TB_ELOGIOS" PRIMARY KEY 
		(
			"ID_ELOGIO"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_entrada     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_entrada"(
	"FD_NUMERO"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("FD_NUMERO"),
	"FD_NUMERO_NOTA_FISCAL"                varchar (10)         NOT NULL,
	"FD_COD_FORNECEDOR"                    bigint               DEFAULT 0 NULL,
	"FD_DATA"                              varchar (10)         NULL,
	"FD_RESUMO"                            text                 NULL,
		CONSTRAINT "PK_TB_ENTRADA" PRIMARY KEY 
		(
			"FD_NUMERO"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         tb_entrada_armaria         */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_entrada_armaria"(
	"ID_ENT_ARMARIA"                       bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ENT_ARMARIA"),
	"GCM_RE"                               varchar (10)         NULL,
	"GCM_GUERRA"                           varchar (20)         NULL,
	"GCM_NOME"                             varchar (50)         NULL,
	"DATA"                                 datetime             NULL,
	"RESUMO"                               text                 NULL,
		CONSTRAINT "PK_TB_ENTRADA_ARMARIA" PRIMARY KEY 
		(
			"ID_ENT_ARMARIA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_entrada_itens        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_entrada_itens"(
	"FD_NUMERO"                            bigint               NOT NULL,
	"FD_CODIGO_PRODUTO"                    bigint               DEFAULT 0 NULL,
	"FD_QTDE_ENTRADA"                      bigint               DEFAULT 0 NULL,
	"FD_ID_ITEM_ENTRADA"                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("FD_ID_ITEM_ENTRADA"),
		CONSTRAINT "PK_TB_ENTRADA_ITENS" PRIMARY KEY 
		(
			"FD_NUMERO"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_envolvidos      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_envolvidos"(
	"ID_ENVOLVIDOS"                        bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ENVOLVIDOS"),
	"BOL_ID"                               bigint               DEFAULT 0 NOT NULL,
	"ENV_NOME"                             varchar (50)         NOT NULL,
	"ENV_RG"                               varchar (10)         NULL,
	"ENV_CPF"                              varchar (14)         NULL,
	"ENV_PAI"                              varchar (50)         NULL,
	"ENV_MAE"                              varchar (50)         NULL,
	"ENV_NACIONALIDADE"                    varchar (25)         NULL,
	"ENV_NATURALIDADE"                     varchar (50)         NULL,
	"ENV_SEXO"                             varchar (10)         NULL,
	"ENV_DATA_NASC"                        date                 NULL,
	"ENV_CUTIS"                            varchar (15)         NULL,
	"ENV_PROFISSAO"                        varchar (25)         NULL,
	"ENV_TIPO_LOGRADOURO"                  varchar (10)         NULL,
	"ENV_LOGRADOURO"                       varchar (50)         NULL,
	"ENV_BAIRRO"                           varchar (30)         NULL,
	"ENV_CIDADE"                           varchar (50)         NULL,
	"ENV_UF"                               varchar (10)         NULL,
	"ENV_CEP"                              varchar (9)          NULL,
	"ENV_TELEFONE"                         varchar (14)         NULL,
	"ENV_CELULAR"                          varchar (15)         NULL,
	"ENV_EMPRESA"                          varchar (30)         NULL,
	"ENV_ENDERECO_EMPRESA"                 varchar (100)        NULL,
	"ENV_TELEFONE_EMPRESA"                 varchar (14)         NULL,
	"ENV_PONTO_REFERENCIA"                 varchar (50)         NOT NULL,
	"ENV_RESUMO"                           text                 NOT NULL,
	"ENV_CONDICAO"                         varchar (10)         NOT NULL,
		CONSTRAINT "PK_TB_ENVOLVIDOS" PRIMARY KEY 
		(
			"ID_ENVOLVIDOS"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_equipes     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_equipes"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"EQUIPE"                               varchar (20)         NULL,
	"SUPERVISOR"                           bigint               NULL,
	"MOTORISTA"                            bigint               NULL,
	"AUXILIAR"                             bigint               NULL,
	"AUXILIAR2"                            bigint               NULL,
	"AUXILIAR3"                            bigint               NULL,
		CONSTRAINT "PK_TB_EQUIPES" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_escala_apres       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_escala_apres"(
	"ESC_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("ESC_ID"),
	"ESC_GCM"                              bigint               DEFAULT 0 NOT NULL,
	"ESC_DATA"                             date                 NULL,
	"ESC_LOCAL_APRES"                      varchar (25)         NULL,
	"ESC_HORARIO"                          datetime             NULL,
	"ESC_REFERENCIA"                       varchar (50)         NULL,
	"ESC_STATUS"                           bigint               DEFAULT 0 NULL,
		CONSTRAINT "PK_TB_ESCALA_APRES" PRIMARY KEY 
		(
			"ESC_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_escolaridade       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_escolaridade"(
	"ESCOLA_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("ESCOLA_ID"),
	"ESCOLA_ID_GCM"                        bigint               NOT NULL,
	"ESCOLA_CURSO"                         varchar (30)         NULL,
	"ESCOLA_INSTITUICAO"                   varchar (50)         NULL,
	"ESCOLA_ANO_INICIO"                    date                 NULL,
	"ESCOLA_ANO_CONCLUSAO"                 date                 NULL,
	"ESCOLA_NIVEL"                         varchar (20)         NULL,
	"ESCOLA_CIDADE"                        varchar (15)         NULL,
	"ESCOLA_UF"                            varchar (50)         NULL,
	"ESCOLA_CARGA_HOR"                     bigint               NULL,
		CONSTRAINT "PK_TB_ESCOLARIDADE" PRIMARY KEY 
		(
			"ESCOLA_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*             tb_escolaridade_colaborador             */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_escolaridade_colaborador"(
	"ESCOLA_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("ESCOLA_ID"),
	"ESCOLA_ID_COLABORADOR"                bigint               NOT NULL,
	"ESCOLA_CURSO"                         varchar (30)         NULL,
	"ESCOLA_INSTITUICAO"                   varchar (10)         NULL,
	"ESCOLA_ANO_INICIO"                    date                 NULL,
	"ESCOLA_ANO_CONCLUSAO"                 date                 NULL,
	"ESCOLA_CARGA_HOR"                     bigint               NULL,
	"ESCOLA_NIVEL"                         varchar (20)         NULL,
	"ESCOLA_CIDADE"                        varchar (50)         NULL,
	"ESCOLA_UF"                            varchar (10)         NULL,
		CONSTRAINT "PK_TB_ESCOLARIDADE_COLABORADOR" PRIMARY KEY 
		(
			"ESCOLA_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_especializado        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_especializado"(
	"ID_ES"                                bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ES"),
	"ES_ID_MAPA"                           bigint               NULL,
	"ES_VIATURA"                           bigint               NULL,
	"ES_ENCARREGADO"                       bigint               NULL,
	"ES_MOTORISTA"                         bigint               NULL,
	"ES_AUXILIAR"                          bigint               NULL,
	"ES_AUXILIAR2"                         bigint               NULL,
	"ES_AUXILIAR3"                         bigint               NULL,
	"ES_SETOR"                             bigint               NULL,
	"ES_HORARIO"                           bigint               NULL,
		CONSTRAINT "PK_TB_ESPECIALIZADO" PRIMARY KEY 
		(
			"ID_ES"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_estoque     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_estoque"(
	"ESTOQUE_ID"                           bigint               NOT NULL AUTO_INCREMENT	,INDEX("ESTOQUE_ID"),
	"ESTOQUE_DESCRICAO"                    varchar (50)         NOT NULL,
	"ESTOQUE_GRUPO"                        bigint               NULL,
	"ESTOQUE_SUBGRUPO"                     bigint               NULL,
	"ESTOQUE_MODELO"                       varchar (25)         NULL,
	"ESTOQUE_MARCA"                        varchar (25)         NULL,
	"ESTOQUE_TIPO"                         varchar (15)         NULL,
	"ESTOQUE_FORNECEDOR"                   bigint               DEFAULT 0 NULL,
	"ESTOQUE_N_CONTROLE"                   bigint               DEFAULT 0 NULL,
	"ESTOQUE_N_PATRIMONIO"                 bigint               DEFAULT 0 NULL,
	"ESTOQUE_REFERENCIA"                   varchar (50)         NULL,
	"ESTOQUE_QTDE"                         bigint               DEFAULT 0 NULL,
	"ESTOQUE_VALOR"                        decimal (10,2)       DEFAULT 0.00 NULL,
	"ESTOQUE_MINIMO"                       bigint               DEFAULT 0 NULL,
	"ESTOQUE_MAXIMO"                       bigint               DEFAULT 0 NULL,
	"ESTOQUE_FOTO"                         longblob             NULL,
	"ESTOQUE_OBSERVACAO"                   text                 NULL,
	"ESTOQUE_DEPARTAMENTO"                 bigint               DEFAULT 0 NULL,
		CONSTRAINT "PK_TB_ESTOQUE" PRIMARY KEY 
		(
			"ESTOQUE_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_folgas_ferias        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_folgas_ferias"(
	"FERIAR_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("FERIAR_ID"),
	"FERIAS_ID_GCM"                        bigint               NOT NULL,
	"FERIAS_DESCRICAO"                     varchar (50)         NULL,
	"FERIAS_TIPO_FOLGA"                    bigint               DEFAULT 0 NULL,
	"FERIAS_DATA_INICIO"                   date                 NULL,
	"FERIAS_DIAS"                          bigint               NULL,
	"FERIAS_DATA_TERMINO"                  date                 NULL,
	"FERIAS_RESUMO"                        text                 NULL,
	"FERIAS_DATA_INICIO_REF"               date                 NULL,
	"FERIAS_DATA_TERMINO_REF"              date                 NULL,
		CONSTRAINT "PK_TB_FOLGAS_FERIAS" PRIMARY KEY 
		(
			"FERIAR_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*              tb_folgas_ferias_colaborador              */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_folgas_ferias_colaborador"(
	"FERIAS_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("FERIAS_ID"),
	"FERIAS_ID_COLABORADOR"                bigint               NOT NULL,
	"FERIAS_DESCRICAO"                     varchar (50)         NULL,
	"FERIAS_TIPO_FOLGA"                    bigint               DEFAULT 0 NULL,
	"FERIAS_DATA_INICIO"                   date                 NULL,
	"FERIAS_DIAS"                          bigint               NULL,
	"FERIAS_DATA_TERMINO"                  date                 NULL,
	"FERIAS_RESUMO"                        text                 NULL,
		CONSTRAINT "PK_TB_FOLGAS_FERIAS_COLABORADOR" PRIMARY KEY 
		(
			"FERIAS_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_fornecedor      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_fornecedor"(
	"FOR_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("FOR_ID"),
	"FOR_RAZAO_SOCIAL"                     varchar (50)         NOT NULL,
	"FOR_FANTASIA"                         varchar (50)         NULL,
	"FOR_CNPJ"                             varchar (18)         NOT NULL,
	"FOR_INS_ESTADUAL"                     varchar (15)         NULL,
	"FOR_INS_MUNICIPAL"                    bigint               DEFAULT 0 NULL,
	"FOR_ENDERECO"                         varchar (50)         NULL,
	"FOR_BAIRRO"                           varchar (50)         NULL,
	"FOR_CIDADE"                           varchar (50)         NULL,
	"FOR_UF"                               varchar (2)          NULL,
	"FOR_CEP"                              varchar (9)          DEFAULT '0' NULL,
	"FOR_TELEFONE"                         bigint               DEFAULT 0 NULL,
	"FOR_CONTATO"                          varchar (25)         NULL,
	"FOR_EMAIL"                            varchar (100)        NULL,
	"FOR_SITE"                             varchar (100)        NULL,
	"FOR_TIPO_LOGRADOURO"                  varchar (10)         NULL,
	"FOR_OBSERVACAO"                       text                 NULL,
		CONSTRAINT "PK_TB_FORNECEDOR" PRIMARY KEY 
		(
			"FOR_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_foto_infocrime        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_foto_infocrime"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"ID_INFO_CRIME"                        bigint               NULL,
	"URL"                                  varchar (255)        NULL,
		CONSTRAINT "PK_TB_FOTO_INFOCRIME" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   tb_gcm   */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_gcm"(
	"GCM_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("GCM_ID"),
	"GCM_NOME"                             varchar (50)         NOT NULL,
	"GCM_GUERRA"                           varchar (20)         NULL,
	"GCM_RE_MATRICULA"                     bigint               DEFAULT 0 NOT NULL,
	"GCM_RG"                               varchar (15)         NOT NULL,
	"GCM_CPF"                              varchar (14)         DEFAULT '0' NOT NULL,
	"GCM_ENDERECO"                         varchar (50)         NULL,
	"GCM_NUMERO"                           bigint               NULL,
	"GCM_BAIRRO"                           varchar (50)         NULL,
	"GCM_CIDADE"                           varchar (50)         NULL,
	"GCM_PAI"                              varchar (100)        NULL,
	"GCM_MAE"                              varchar (100)        NULL,
	"GCM_FUNCAO"                           varchar (20)         NULL,
	"GCM_NUMERO_PORTE"                     varchar (15)         NULL,
	"GCM_VALIDADE_PORTE"                   date                 NULL,
	"GCM_DATA_NASC"                        date                 NULL,
	"GCM_CNH"                              varchar (15)         NULL,
	"GCM_VALIDADE_CNH"                     date                 NULL,
	"GCM_DATA_ADMISSAO"                    date                 NULL,
	"GCM_DATA_DEMISSAO"                    date                 NULL,
	"GCM_TIPO_SANGUINEO"                   varchar (10)         NULL,
	"GCM_NATURALIDADE"                     varchar (50)         NULL,
	"GCM_NACIONALIDADE"                    varchar (50)         NULL,
	"GCM_FATOR_RH"                         varchar (10)         NULL,
	"GCM_DATA_EXP_PORTE"                   date                 NULL,
	"GCM_DATA_EXP_ID_FUNCIONAL"            date                 NULL,
	"GCM_FOTO"                             longblob             NULL,
	"GCM_CATEG_CNH"                        varchar (10)         NULL,
	"GCM_TELEFONE"                         bigint               DEFAULT 0 NULL,
	"GCM_CELULAR"                          bigint               DEFAULT 0 NULL,
	"GCM_CONTATO"                          varchar (25)         NULL,
	"GCM_TIPO_LOGRADOURO"                  varchar (10)         NULL,
	"GCM_UF"                               varchar (2)          NULL,
	"GCM_CEP"                              varchar (9)          DEFAULT '0' NULL,
	"GCM_OBSERVACAO"                       text                 NULL,
	"GCM_COMPORTAMENTO"                    varchar (25)         NULL,
	"GCM_RG_FUNCIONAL_PMJ"                 varchar (10)         NULL,
	"GCM_ELOGIOS"                          varchar (20)         NULL,
	"GCM_CARTEIRA_TRABALHO"                varchar (20)         NULL,
	"GCM_TITULO_ELEITOR"                   bigint               DEFAULT 0 NULL,
	"GCM_RG_FUNCIONAL"                     varchar (15)         NULL,
	"GCM_STATUS"                           bigint               DEFAULT 0 NOT NULL,
	"GCM_EMAIL"                            varchar (50)         NULL,
		CONSTRAINT "PK_TB_GCM" PRIMARY KEY 
		(
			"GCM_ID","GCM_RE_MATRICULA","GCM_RG","GCM_CPF"
		) 
);

 CREATE UNIQUE INDEX "NK_TB_GCM2" ON "tb_gcm"
	("GCM_RE_MATRICULA");

 CREATE UNIQUE INDEX "NK_TB_GCM3" ON "tb_gcm"
	("GCM_RG");

 CREATE UNIQUE INDEX "NK_TB_GCM4" ON "tb_gcm"
	("GCM_CPF");

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_gcm_bo    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_gcm_bo"(
	"id"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("id"),
	"bo_id"                                bigint               NULL,
	"gcm_re"                               bigint               NULL,
		CONSTRAINT "PK_TB_GCM_BO" PRIMARY KEY 
		(
			"id"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_gcm_elogios       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_gcm_elogios"(
	"ID_ELO_GCM"                           bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ELO_GCM"),
	"ID_ELOGIO"                            bigint               NULL,
	"ID_GCM"                               bigint               NULL,
		CONSTRAINT "PK_TB_GCM_ELOGIOS" PRIMARY KEY 
		(
			"ID_ELO_GCM"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_gcm_rel     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_gcm_rel"(
	"REL_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("REL_ID"),
	"REL_ID_MOTOMEC"                       bigint               NOT NULL,
	"REL_GCM"                              bigint               DEFAULT 0 NOT NULL,
	"REL_DESCRICAO"                        varchar (50)         NOT NULL,
		CONSTRAINT "PK_TB_GCM_REL" PRIMARY KEY 
		(
			"REL_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_grupo    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_grupo"(
	"GRU_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("GRU_ID"),
	"GRU_DESCRICAO"                        varchar (50)         NOT NULL,
		CONSTRAINT "PK_TB_GRUPO" PRIMARY KEY 
		(
			"GRU_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         tb_grupo_mat_belico         */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_grupo_mat_belico"(
	"GRUBEL_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("GRUBEL_ID"),
	"GRUBEL_DESCRICAO"                     varchar (50)         NOT NULL,
		CONSTRAINT "PK_TB_GRUPO_MAT_BELICO" PRIMARY KEY 
		(
			"GRUBEL_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_info_crime      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_info_crime"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"DATA"                                 datetime             NULL,
	"NOME"                                 varchar (50)         NULL,
	"CPF"                                  varchar (14)         NULL,
	"RG"                                   varchar (20)         NULL,
	"MAE"                                  varchar (50)         NULL,
	"PAI"                                  varchar (50)         NULL,
	"DATA_NASC"                            datetime             NULL,
	"NATURALIDADE"                         varchar (30)         NULL,
	"NACIONALIDADE"                        varchar (30)         NULL,
	"TIPO_LOGRADOURO"                      varchar (10)         NULL,
	"LOGRADOURO"                           varchar (30)         NULL,
	"BAIRRO"                               varchar (30)         NULL,
	"CIDADE"                               varchar (30)         NULL,
	"UF"                                   varchar (10)         NULL,
	"CEP"                                  varchar (9)          NULL,
	"TELEFONE"                             varchar (15)         NULL,
	"TIPO_OCORRENCIA"                      varchar (10)         NULL,
	"TATUAGEM"                             varchar (240)        NULL,
	"VULGO"                                varchar (15)         NULL,
	"CICATRIZES"                           varchar (15)         NULL,
	"OLHOS"                                varchar (15)         NULL,
	"COMPLEICAO_FISICA"                    varchar (15)         NULL,
	"CUTIS"                                varchar (15)         NULL,
	"ALTURA"                               varchar (15)         NULL,
	"CABELO"                               varchar (15)         NULL,
	"BARBA"                                varchar (15)         NULL,
	"SEXO"                                 varchar (10)         NULL,
	"VIATURA"                              varchar (10)         NULL,
	"GUARNICAO"                            varchar (30)         NULL,
	"EQUIPE"                               varchar (30)         NULL,
	"OBSERVACOES"                          text                 NULL,
	"FOTO"                                 varchar (180)        NULL,
		CONSTRAINT "PK_TB_INFO_CRIME" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_item_ent_arma        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_item_ent_arma"(
	"ID_ITEM_ARMARIA"                      bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ITEM_ARMARIA"),
	"ID_ARMA"                              bigint               NULL,
	"ITEM_ENTRADA"                         bigint               NULL,
	"ITEM_QTDE"                            bigint               NULL,
		CONSTRAINT "PK_TB_ITEM_ENT_ARMA" PRIMARY KEY 
		(
			"ID_ITEM_ARMARIA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         tb_item_ent_mat_bel         */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_item_ent_mat_bel"(
	"ID_ITEM_ARMARIA"                      bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ITEM_ARMARIA"),
	"ID_MAT_BEL"                           bigint               NULL,
	"ITEM_ENTRADA"                         bigint               NULL,
	"ITEM_QTDE"                            bigint               NULL,
	"ITEM_REF"                             varchar (10)         NULL,
		CONSTRAINT "PK_TB_ITEM_ENT_MAT_BEL" PRIMARY KEY 
		(
			"ID_ITEM_ARMARIA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         tb_item_saida_arma         */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_item_saida_arma"(
	"ID_ITEM_ARMARIA"                      bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ITEM_ARMARIA"),
	"ID_ARMA"                              bigint               NULL,
	"ITEM_ENTRADA"                         bigint               NULL,
	"ITEM_QTDE"                            bigint               NULL,
		CONSTRAINT "PK_TB_ITEM_SAIDA_ARMA" PRIMARY KEY 
		(
			"ID_ITEM_ARMARIA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_item_saida_mat_bel          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_item_saida_mat_bel"(
	"ID_ITEM_ARMARIA"                      bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_ITEM_ARMARIA"),
	"ID_MAT_BEL"                           bigint               NULL,
	"ITEM_SAIDA"                           bigint               NULL,
	"ITEM_QTDE"                            bigint               NULL,
	"ITEM_REF"                             varchar (10)         NULL,
		CONSTRAINT "PK_TB_ITEM_SAIDA_MAT_BEL" PRIMARY KEY 
		(
			"ID_ITEM_ARMARIA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*   tb_leis   */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_leis"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"LEI"                                  varchar (180)        NULL,
	"TIPO_LEI"                             varchar (30)         NULL,
	"DESCRICAO"                            text                 NULL,
		CONSTRAINT "PK_TB_LEIS" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_liberar_manutencao          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_liberar_manutencao"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"USUARIO"                              varchar (30)         NULL,
	"VIATURA"                              bigint               NULL,
	"STATUS"                               bigint               NULL,
	"RESUMO"                               text                 NULL,
		CONSTRAINT "PK_TB_LIBERAR_MANUTENCAO" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_livro_caixa       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_livro_caixa"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"TIPO"                                 varchar (10)         NULL,
	"DATA"                                 date                 NULL,
	"VALOR"                                bigint               NULL,
	"CATEGORIA"                            varchar (30)         NULL,
	"DESCRICAO"                            text                 NULL,
		CONSTRAINT "PK_TB_LIVRO_CAIXA" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       TB_LOGIN_GROUP       */
/*------------------------------------------------------------*/

 CREATE TABLE "TB_LOGIN_GROUP"(
	"LOGIN_GROUP_NAME"                     varchar (60)         NOT NULL,
	"LOGIN_GROUP_IS_ADMIN"                 tinyint (1)          NOT NULL,
		CONSTRAINT "LOGIN_GROUP_PK" PRIMARY KEY 
		(
			"LOGIN_GROUP_NAME"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      TB_LOGIN_RULE      */
/*------------------------------------------------------------*/

 CREATE TABLE "TB_LOGIN_RULE"(
	"LOGIN_RULE_PROJECT"                   varchar (8)          NOT NULL,
	"LOGIN_GROUP_NAME"                     varchar (60)         NOT NULL,
	"LOGIN_RULE_OBJECT"                    varchar (100)        NOT NULL,
	"LOGIN_RULE_PERMISSIONS"               varchar (100)        NOT NULL,
		CONSTRAINT "LOGIN_RULE_PK" PRIMARY KEY 
		(
			"LOGIN_RULE_PROJECT","LOGIN_GROUP_NAME","LOGIN_RULE_OBJECT"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      TB_LOGIN_USER      */
/*------------------------------------------------------------*/

 CREATE TABLE "TB_LOGIN_USER"(
	"LOGIN_GROUP_NAME"                     varchar (60)         NOT NULL,
	"LOGIN_USER_LOGIN"                     varchar (40)         NOT NULL,
	"LOGIN_USER_PASSWORD"                  varchar (40)         NOT NULL,
	"LOGIN_USER_NAME"                      varchar (60)         NOT NULL,
	"LOGIN_USER_OBS"                       text                 NOT NULL,
		CONSTRAINT "LOGIN_USER_PK" PRIMARY KEY 
		(
			"LOGIN_USER_LOGIN"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         tb_manutencao_frota         */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_manutencao_frota"(
	"MANUT_ID"                             bigint               NOT NULL AUTO_INCREMENT	,INDEX("MANUT_ID"),
	"MANUT_OFICINA"                        bigint               DEFAULT 0 NOT NULL,
	"MANUT_TIPO_SERVICO"                   bigint               DEFAULT 0 NOT NULL,
	"MANUT_DESCRICAO"                      varchar (50)         NOT NULL,
	"MANUT_PLACA"                          varchar (7)          DEFAULT '0' NOT NULL,
	"MANUT_VIATURA"                        varchar (10)         NOT NULL,
	"MANUT_DATA"                           date                 NULL,
	"MANUT_DATA_INICIO"                    date                 NULL,
	"MANUT_DATA_PREVISTA_TERMINO"          date                 NULL,
	"MANUT_DATA_PREVISTA"                  date                 NULL,
	"MANUT_RESPONSAVEL"                    varchar (25)         NOT NULL,
	"MANUT_TIPO"                           varchar (15)         NULL,
	"MANUT_VALOR"                          decimal (10,2)       DEFAULT 0.00 NULL,
	"MANUT_KM"                             bigint               DEFAULT 0 NULL,
	"MANUT_OBSERVACAO"                     text                 NULL,
	"MANUT_PREFIXO"                        varchar (10)         NULL,
		CONSTRAINT "PK_TB_MANUTENCAO_FROTA" PRIMARY KEY 
		(
			"MANUT_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_mapa_forca      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_mapa_forca"(
	"ID_MAPA"                              bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_MAPA"),
	"STATUS"                               bigint               NULL,
	"DATA"                                 date                 NULL,
	"HORARIO_PLANTAO"                      bigint               NULL,
	"RADIO_OPERADOR"                       varchar (30)         NULL,
	"EQUIPE"                               bigint               NULL,
	"INTERESSADO"                          bigint               NULL,
	"RELATORIO_INICIO"                     text                 NULL,
	"RELATORIO_FIM"                        text                 NULL,
		CONSTRAINT "PK_TB_MAPA_FORCA" PRIMARY KEY 
		(
			"ID_MAPA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_marcas_mat_belico          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_marcas_mat_belico"(
	"ID_MARCA_MB"                          bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_MARCA_MB"),
	"DESCRICAO"                            varchar (30)         NULL,
		CONSTRAINT "PK_TB_MARCAS_MAT_BELICO" PRIMARY KEY 
		(
			"ID_MARCA_MB"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_mat_belico      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_mat_belico"(
	"MATBEL_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("MATBEL_ID"),
	"MATBEL_DESCRICAO"                     varchar (50)         NOT NULL,
	"MATBEL_MODELO"                        varchar (25)         NULL,
	"MATBEL_REF"                           varchar (15)         NULL,
	"MATBEL_FORNECEDOR"                    bigint               DEFAULT 0 NULL,
	"MATBEL_GRUPO"                         bigint               NULL,
	"MATBEL_SUBGRUPO"                      bigint               NULL,
	"MATBEL_QTDE"                          bigint               DEFAULT 0 NULL,
	"MATBEL_SERIE"                         varchar (15)         NULL,
	"MATBEL_LOTE"                          varchar (15)         NULL,
	"MATBEL_TAMANHO"                       varchar (10)         NULL,
	"MATBEL_EST_MINIMO"                    bigint               DEFAULT 0 NULL,
	"MATBEL_EST_MAXIMO"                    bigint               DEFAULT 0 NULL,
	"MATBEL_DATA_VENCIMENTO"               date                 NULL,
	"MATBEL_DATA_FABRICACAO"               date                 NULL,
	"MATBEL_VALOR"                         decimal (10,2)       DEFAULT 0.00 NULL,
	"MATBEL_FOTO"                          longblob             NULL,
	"MATBEL_OBSERVACAO"                    text                 NULL,
	"MATBEL_STATUS"                        bigint               NULL,
		CONSTRAINT "PK_TB_MAT_BELICO" PRIMARY KEY 
		(
			"MATBEL_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_motivo_talao       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_motivo_talao"(
	"ID_MOTIVO_TALAO"                      bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_MOTIVO_TALAO"),
	"MOTIVO_DESCRICAO"                     varchar (50)         NOT NULL,
		CONSTRAINT "PK_TB_MOTIVO_TALAO" PRIMARY KEY 
		(
			"ID_MOTIVO_TALAO"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_nivel_escolaridade          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_nivel_escolaridade"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"DESCRICAO"                            varchar (30)         NULL,
		CONSTRAINT "PK_TB_NIVEL_ESCOLARIDADE" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_nota_culpa      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_nota_culpa"(
	"NOTA_ID"                              bigint               NOT NULL AUTO_INCREMENT	,INDEX("NOTA_ID"),
	"NOTA_GCM"                             bigint               DEFAULT 0 NOT NULL,
	"NOTA_PROCESSO"                        varchar (50)         NULL,
	"NOTA_TRANSGRESSAO"                    varchar (50)         NULL,
	"NOTA_DATA"                            date                 NULL,
	"NOTA_TIPO_PUNICAO"                    varchar (50)         NULL,
	"NOTA_PUBLICACAO"                      date                 NULL,
	"NOTA_STATUS"                          bigint               DEFAULT 0 NULL,
	"NOTA_DOC_FOTO"                        varchar (150)        NULL,
	"NOTA_TIPO_NOTA"                       varchar (10)         NULL,
	"NOTA_DATA_PUNICAO"                    date                 NULL,
	"NOTA_COMPORTAMENTO"                   varchar (25)         NULL,
	"NOTA_ENQUADRAMENTO"                   text                 NULL,
	"NOTA_RESUMO"                          text                 NULL,
	"N_NOTA"                               varchar (10)         NULL,
		CONSTRAINT "PK_TB_NOTA_CULPA" PRIMARY KEY 
		(
			"NOTA_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_novidades_efetivo          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_novidades_efetivo"(
	"ID_N"                                 bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_N"),
	"N_ID_MAPA"                            bigint               NULL,
	"N_FOLGA"                              varchar (20)         NULL,
	"GCM_RE"                               bigint               NULL,
		CONSTRAINT "PK_TB_NOVIDADES_EFETIVO" PRIMARY KEY 
		(
			"ID_N"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_oficina     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_oficina"(
	"OFIC_ID"                              bigint               NOT NULL AUTO_INCREMENT	,INDEX("OFIC_ID"),
	"OFIC_RAZAO_SOCIAL"                    varchar (50)         NULL,
	"OFIC_FANTASIA"                        varchar (50)         NULL,
	"OFIC_CNPJ"                            varchar (18)         NULL,
	"OFIC_INS_ESTADUAL"                    varchar (15)         NULL,
	"OFIC_INS_MUNICIPAL"                   varchar (15)         DEFAULT '0' NULL,
	"OFIC_TIPO_LOGRADOURO"                 varchar (10)         NULL,
	"OFIC_ENDERECO"                        varchar (50)         NULL,
	"OFIC_BAIRRO"                          varchar (50)         NULL,
	"OFIC_CIDADE"                          varchar (50)         NULL,
	"OFIC_UF"                              varchar (2)          NULL,
	"OFIC_CEP"                             varchar (9)          DEFAULT '0' NULL,
	"OFIC_TELEFONE"                        bigint               DEFAULT 0 NULL,
	"OFIC_EMAIL"                           varchar (100)        NULL,
	"OFIC_OBSERVACAO"                      text                 NULL,
		CONSTRAINT "PK_TB_OFICINA" PRIMARY KEY 
		(
			"OFIC_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_ordem_servico        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_ordem_servico"(
	"ID_OS"                                bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_OS"),
	"OS_DATA"                              date                 NULL,
	"OS_HORA"                              datetime             NULL,
	"OS_STATUS"                            varchar (10)         NULL,
	"OS_PRIORIDADE"                        varchar (10)         NULL,
	"OS_VIATURA"                           bigint               NULL,
	"OS_DESCRICAO"                         varchar (100)        NULL,
	"OS_RESUMO"                            text                 NULL,
		CONSTRAINT "PK_TB_ORDEM_SERVICO" PRIMARY KEY 
		(
			"ID_OS"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_ostensivo_mapa        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_ostensivo_mapa"(
	"ID_OM"                                bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_OM"),
	"OM_ID_MAPA"                           bigint               NULL,
	"OM_VIATURA"                           bigint               NULL,
	"OM_ENCARREGADO"                       bigint               NULL,
	"OM_MOTORISTA"                         bigint               NULL,
	"OM_AUXILIAR"                          bigint               NULL,
	"OM_AUXILIAR2"                         bigint               NULL,
	"OM_AUXILIAR3"                         bigint               NULL,
	"OM_SETOR"                             bigint               NULL,
	"OM_HORARIO"                           bigint               NULL,
		CONSTRAINT "PK_TB_OSTENSIVO_MAPA" PRIMARY KEY 
		(
			"ID_OM"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_passa_armaria        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_passa_armaria"(
	"ID_PASS_ARMARIA"                      bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_PASS_ARMARIA"),
	"DATA"                                 datetime             NULL,
	"ARMEIRO"                              varchar (20)         NULL,
	"SUPERVISOR"                           varchar (20)         NULL,
	"PLANTAO"                              bigint               NULL,
	"PISTOLA"                              bigint               NULL,
	"REVOLVER"                             bigint               NULL,
	"ESPINGARDA"                           bigint               NULL,
	"CARREGADOR"                           bigint               NULL,
	"MUNICAO"                              bigint               NULL,
	"RADIO"                                bigint               NULL,
	"COLETE"                               bigint               NULL,
	"ALGEMA"                               bigint               NULL,
	"TONFA"                                bigint               NULL,
	"HORARIO"                              bigint               NULL,
	"OBSERVACOES"                          text                 NULL,
	"STATUS"                               varchar (10)         NULL,
		CONSTRAINT "PK_TB_PASSA_ARMARIA" PRIMARY KEY 
		(
			"ID_PASS_ARMARIA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_plantao     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_plantao"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"HORARIO"                              varchar (20)         NULL,
		CONSTRAINT "PK_TB_PLANTAO" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_postos_fixos       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_postos_fixos"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"POSTO"                                varchar (30)         NULL,
		CONSTRAINT "PK_TB_POSTOS_FIXOS" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_postos_fixos_mapa          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_postos_fixos_mapa"(
	"ID_PF"                                bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_PF"),
	"PF_ID_MAPA"                           bigint               NULL,
	"PF_POSTO"                             bigint               NULL,
	"PF_GCM"                               bigint               NULL,
	"PF_GCM2"                              bigint               NULL,
	"PF_GCM3"                              bigint               NULL,
	"PF_GCM4"                              bigint               NULL,
	"PF_GCM5"                              bigint               NULL,
	"PF_HORARIO"                           bigint               NULL,
		CONSTRAINT "PK_TB_POSTOS_FIXOS_MAPA" PRIMARY KEY 
		(
			"ID_PF"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_prioridade      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_prioridade"(
	"ID_PRIORIDADE"                        bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_PRIORIDADE"),
	"PRE_DESCRICAO"                        varchar (100)        NOT NULL,
		CONSTRAINT "PK_TB_PRIORIDADE" PRIMARY KEY 
		(
			"ID_PRIORIDADE"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_proc_admin      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_proc_admin"(
	"ID_PA"                                bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_PA"),
	"NUM_PROCESSO"                         varchar (15)         NULL,
	"PA_ANO"                               varchar (4)          NULL,
	"PA_DATA_INST"                         datetime             NULL,
	"PA_MODALIDADE"                        varchar (50)         NULL,
	"PA_ENQUADRAMENTO"                     varchar (50)         NULL,
	"PA_RESUMO"                            text                 NULL,
		CONSTRAINT "PK_TB_PROC_ADMIN" PRIMARY KEY 
		(
			"ID_PA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_proc_admin_partes          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_proc_admin_partes"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"ID_PA"                                bigint               NULL,
	"ID_GCM"                               bigint               NULL,
		CONSTRAINT "PK_TB_PROC_ADMIN_PARTES" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_proc_disc_prel        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_proc_disc_prel"(
	"PROC_ID"                              bigint               NOT NULL AUTO_INCREMENT	,INDEX("PROC_ID"),
	"PROC_RE_MATRICULA"                    bigint               DEFAULT 0 NOT NULL,
	"PROC_ID_GCM"                          bigint               DEFAULT 0 NULL,
	"PROC_PARTE"                           varchar (10)         NULL,
	"PROC_MOTIVO"                          varchar (50)         NULL,
	"PROC_OS"                              bigint               DEFAULT 0 NULL,
	"PROC_RECEBIMENTO"                     date                 NULL,
	"PROC_PRAZO"                           date                 NULL,
	"PROC_CONCLUSAO"                       varchar (100)        NULL,
	"PROC_OBSERVACAO"                      text                 NULL,
		CONSTRAINT "PK_TB_PROC_DISC_PREL" PRIMARY KEY 
		(
			"PROC_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*           tb_registro_ocorrencias           */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_registro_ocorrencias"(
	"ID_REG_OCOR"                          bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_REG_OCOR"),
	"REG_NUM_TALAO"                        bigint               DEFAULT 0 NOT NULL,
	"REG_VIATURA"                          bigint               DEFAULT 0 NOT NULL,
	"REG_ATENDENTE"                        varchar (30)         NOT NULL,
	"REG_PRIORIDADE"                       bigint               DEFAULT 0 NOT NULL,
	"REG_SOLICITANTE"                      varchar (30)         NOT NULL,
	"REG_TELEFONE"                         varchar (15)         NOT NULL,
	"REG_TIPO_LOGRADOURO"                  varchar (10)         NOT NULL,
	"REG_LOGRADOURO"                       varchar (100)        NOT NULL,
	"REG_BAIRRO"                           varchar (30)         NOT NULL,
	"REG_CIDADE"                           varchar (30)         NOT NULL,
	"REG_UF"                               varchar (10)         NOT NULL,
	"REG_CEP"                              varchar (9)          NOT NULL,
	"REG_REFERENCIA"                       varchar (100)        NULL,
	"REG_NATUREZA"                         varchar (10)         NOT NULL,
	"REG_NATUREZA_FINAL"                   varchar (10)         NULL,
	"REG_HISTORICO"                        text                 NULL,
	"REG_HISTORICO_FINAL"                  text                 NULL,
	"REG_DATA"                             datetime             NULL,
	"REG_DATA_FINAL"                       datetime             NULL,
	"REG_STATUS"                           bigint               DEFAULT 0 NOT NULL,
	"REG_RESUMO"                           text                 NULL,
		CONSTRAINT "PK_TB_REGISTRO_OCORRENCIAS" PRIMARY KEY 
		(
			"ID_REG_OCOR"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_rel_motomec       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_rel_motomec"(
	"RELMOT_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("RELMOT_ID"),
	"RELMOT_DATA"                          date                 NOT NULL,
	"RELMOT_N_PROTOCOLO"                   bigint               DEFAULT 0 NOT NULL,
	"RELMOT_DESCRICAO"                     varchar (50)         NOT NULL,
	"RELMOT_RESUMO"                        text                 NOT NULL,
	"RELMOT_STATUS"                        bigint               DEFAULT 0 NOT NULL,
	"RELMOT_VIATURA"                       varchar (10)         NOT NULL,
	"RELMOT_PLACA"                         varchar (7)          DEFAULT '0' NOT NULL,
	"RELMOT_PREFIXO"                       varchar (10)         NULL,
		CONSTRAINT "PK_TB_REL_MOTOMEC" PRIMARY KEY 
		(
			"RELMOT_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         tb_rel_motomec_foto         */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_rel_motomec_foto"(
	"MOTOMECFOTO_ID"                       bigint               NOT NULL AUTO_INCREMENT	,INDEX("MOTOMECFOTO_ID"),
	"MOTOMECFOTO_ID_REL"                   bigint               NOT NULL,
	"MOTOMEC_DOC_FOTO"                     varchar (150)        NOT NULL,
		CONSTRAINT "PK_TB_REL_MOTOMEC_FOTO" PRIMARY KEY 
		(
			"MOTOMECFOTO_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_saida    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_saida"(
	"FD_NUMERO"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("FD_NUMERO"),
	"FD_DATA"                              date                 NULL,
	"FD_DEPARTAMENTO"                      bigint               DEFAULT 0 NOT NULL,
	"FD_RESUMO"                            text                 NULL,
		CONSTRAINT "PK_TB_SAIDA" PRIMARY KEY 
		(
			"FD_NUMERO"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_saida_armaria        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_saida_armaria"(
	"ID_SAIDA_ARMARIA"                     bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_SAIDA_ARMARIA"),
	"STATUS"                               bigint               NULL,
	"GCM_RE"                               bigint               NULL,
	"ARMEIRO"                              varchar (20)         NULL,
	"GCM_NOME"                             varchar (50)         NULL,
	"DATA"                                 datetime             NULL,
	"ARMA"                                 bigint               NULL,
	"ARMA_DEV"                             bigint               NULL,
	"MUNICAO_QTDE"                         bigint               NULL,
	"MUNICAO_DEV_QTDE"                     bigint               NULL,
	"CARREGADOR"                           bigint               NULL,
	"CARREGADOR_DEV"                       bigint               NULL,
	"RADIOHT"                              bigint               NULL,
	"RADIOHT_DEV"                          bigint               NULL,
	"ALGEMA"                               varchar (10)         NULL,
	"ALGEMA_DEV"                           varchar (10)         NULL,
	"COLETE"                               varchar (10)         NULL,
	"COLETE_DEV"                           varchar (10)         NULL,
	"TONFA"                                varchar (10)         NULL,
	"TONFA_DEV"                            varchar (10)         NULL,
	"SEG_ARMA"                             bigint               NULL,
	"SEG_ARMA_DEV"                         bigint               NULL,
	"ARMEIRO_DEV"                          varchar (20)         NULL,
	"DATA_DEV"                             datetime             NULL,
	"MUNICAO_QTDE_SEG"                     bigint               NULL,
	"MUNICAO_DEV_SEG"                      bigint               NULL,
	"RESUMO"                               text                 NULL,
	"MUNICAO_DEV"                          bigint               NULL,
		CONSTRAINT "PK_TB_SAIDA_ARMARIA" PRIMARY KEY 
		(
			"ID_SAIDA_ARMARIA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*       tb_saida_itens       */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_saida_itens"(
	"FD_ID_ITEM_SAIDA"                     bigint               NOT NULL AUTO_INCREMENT	,INDEX("FD_ID_ITEM_SAIDA"),
	"FD_CODIGO_PRODUTO"                    bigint               DEFAULT 0 NOT NULL,
	"FD_QTDE_SAIDA"                        bigint               DEFAULT 0 NULL,
	"FD_NUMERO"                            bigint               DEFAULT 0 NULL,
		CONSTRAINT "PK_TB_SAIDA_ITENS" PRIMARY KEY 
		(
			"FD_ID_ITEM_SAIDA"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_servicos     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_servicos"(
	"SER_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("SER_ID"),
	"SER_DESCRICAO"                        varchar (50)         NOT NULL,
		CONSTRAINT "PK_TB_SERVICOS" PRIMARY KEY 
		(
			"SER_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_setor    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_setor"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"SETOR"                                varchar (30)         NULL,
		CONSTRAINT "PK_TB_SETOR" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_solicitacao_ferias          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_solicitacao_ferias"(
	"SOL_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("SOL_ID"),
	"SOL_ID_GCM"                           bigint               NOT NULL,
	"SOL_DESCRICAO"                        varchar (50)         NULL,
	"SOL_TIPO_FOLGA"                       bigint               DEFAULT 0 NULL,
	"SOL_DATA_INICIO"                      date                 NULL,
	"SOL_DATA_TERMINO"                     date                 NULL,
	"SOL_RESUMO"                           text                 NULL,
	"SOL_SITUACAO"                         bigint               NULL,
	"SOL_DIAS"                             bigint               NULL,
	"SOL_DATA_TERMINO_REF"                 date                 NULL,
	"SOL_DATA_INICIO_REF"                  date                 NULL,
		CONSTRAINT "PK_TB_SOLICITACAO_FERIAS" PRIMARY KEY 
		(
			"SOL_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_status    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_status"(
	"id"                                   bigint               NOT NULL,
	"descricao"                            varchar (20)         NULL,
		CONSTRAINT "PK_TB_STATUS" PRIMARY KEY 
		(
			"id"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*          tb_status_ocorrencia          */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_status_ocorrencia"(
	"ID_STATUS"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_STATUS"),
	"DESCRICAO"                            varchar (100)        NOT NULL,
		CONSTRAINT "PK_TB_STATUS_OCORRENCIA" PRIMARY KEY 
		(
			"ID_STATUS"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_subgrupo     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_subgrupo"(
	"SUB_DESCRICAO"                        varchar (50)         NOT NULL,
	"SUB_GRUPO"                            bigint               NOT NULL,
	"SUB_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("SUB_ID"),
		CONSTRAINT "PK_TB_SUBGRUPO" PRIMARY KEY 
		(
			"SUB_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*           tb_subgrupo_mat_belico           */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_subgrupo_mat_belico"(
	"BELSUB_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("BELSUB_ID"),
	"BELSUB_ID_GRUPO"                      bigint               NULL,
	"BELSUB_DESCRICAO"                     varchar (50)         NULL,
		CONSTRAINT "PK_TB_SUBGRUPO_MAT_BELICO" PRIMARY KEY 
		(
			"BELSUB_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*    tb_taloes    */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_taloes"(
	"ID_TALAO"                             bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_TALAO"),
	"TAL_RADIO_OPERADOR"                   varchar (30)         NULL,
	"TAL_STATUS"                           bigint               DEFAULT 0 NULL,
	"TAL_DATA"                             datetime             NULL,
	"TAL_DATA_FIM"                         datetime             NULL,
	"TAL_NUMERO"                           bigint               DEFAULT 0 NULL,
	"TAL_VIATURA"                          bigint               DEFAULT 0 NOT NULL,
	"TAL_KM_INICIO"                        bigint               NULL,
	"TAL_KM_FIM"                           bigint               NULL,
	"TAL_NAT_INICIO"                       varchar (10)         NULL,
	"TAL_NAT_FIM"                          varchar (10)         NULL,
	"TAL_CIDADE"                           varchar (30)         NULL,
	"TAL_BAIRRO"                           varchar (30)         NULL,
	"TAL_LOCAL_NATUREZA"                   varchar (100)        NULL,
	"TAL_ENCARREGADO"                      bigint               NULL,
	"TAL_MOTORISTA"                        bigint               NULL,
	"TAL_TER_HOMEM"                        bigint               NULL,
	"TAL_QUA_HOMEM"                        bigint               NULL,
	"TAL_QUI_HOMEM"                        bigint               NULL,
	"TAL_OBSERVACAO"                       text                 NULL,
	"TAL_SEQUENCIA"                        bigint               DEFAULT 0 NULL,
	"TAL_MOTIVO"                           varchar (100)        NULL,
	"TAL_FLAGRANTE"                        varchar (5)          NULL,
	"TAL_NUMERO_LOGRADOURO"                bigint               NULL,
		CONSTRAINT "PK_TB_TALOES" PRIMARY KEY 
		(
			"ID_TALAO"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_tipo_folga      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_tipo_folga"(
	"TIPFOL_ID"                            bigint               NOT NULL AUTO_INCREMENT	,INDEX("TIPFOL_ID"),
	"TIPFOL_DESCRICAO"                     varchar (50)         NOT NULL,
		CONSTRAINT "PK_TB_TIPO_FOLGA" PRIMARY KEY 
		(
			"TIPFOL_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*         tb_tipo_ocorrencia         */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_tipo_ocorrencia"(
	"ID_TIPO_OCO"                          bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID_TIPO_OCO"),
	"TIPO_OCORRENCIA"                      varchar (50)         NULL,
		CONSTRAINT "PK_TB_TIPO_OCORRENCIA" PRIMARY KEY 
		(
			"ID_TIPO_OCO"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_tipos_leis      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_tipos_leis"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"TIPO_LEI"                             varchar (30)         NULL,
		CONSTRAINT "PK_TB_TIPOS_LEIS" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*      tb_troca_oleo      */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_troca_oleo"(
	"OLE_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("OLE_ID"),
	"OLE_DATA"                             date                 NULL,
	"OLE_VIATURA"                          bigint               DEFAULT 0 NOT NULL,
	"OLE_PLACA"                            varchar (7)          DEFAULT '0' NULL,
	"OLE_OFICINA"                          bigint               DEFAULT 0 NULL,
	"OLE_OLEO"                             varchar (25)         NULL,
	"OLE_KM_TOTAL"                         bigint               DEFAULT 0 NULL,
	"OLE_FILTRO_COMBUSTIVEL"               varchar (25)         NULL,
	"OLE_FILTRO_OLEO"                      varchar (25)         NULL,
	"OLE_FILTRO_AR"                        varchar (25)         NULL,
	"OLE_VALOR_TOTAL"                      decimal (10,2)       DEFAULT 0.00 NULL,
	"OLE_PROX_TROCA"                       bigint               DEFAULT 0 NULL,
	"OLE_OBSERVACAO"                       text                 NULL,
		CONSTRAINT "PK_TB_TROCA_OLEO" PRIMARY KEY 
		(
			"OLE_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*     tb_viaturas     */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_viaturas"(
	"VIA_ID"                               bigint               NOT NULL AUTO_INCREMENT	,INDEX("VIA_ID"),
	"VIA_VIATURA"                          varchar (10)         NOT NULL,
	"VIA_MARCA"                            varchar (25)         NULL,
	"VIA_MODELO"                           varchar (25)         NULL,
	"VIA_VERSAO"                           varchar (25)         NULL,
	"VIA_PLACA"                            varchar (7)          DEFAULT '0' NULL,
	"VIA_PREFIXO"                          varchar (10)         NULL,
	"VIA_COMBUSTIVEL"                      varchar (10)         NULL,
	"VIA_RENAVAN"                          varchar (15)         NULL,
	"VIA_CHASSI"                           varchar (25)         NULL,
	"VIA_KM"                               bigint               DEFAULT 0 NULL,
	"VIA_COR"                              varchar (15)         NULL,
	"VIA_TIPO"                             varchar (15)         NULL,
	"VIA_ANO"                              bigint               DEFAULT 0 NULL,
	"VIA_ANO_MODELO"                       bigint               DEFAULT 0 NULL,
	"VIA_DATA_AQUISICAO"                   date                 NOT NULL,
	"VIA_VALOR"                            decimal (10,2)       DEFAULT 0.00 NULL,
	"VIA_N_PATRIMONIO"                     bigint               DEFAULT 0 NOT NULL,
	"VIA_STATUS"                           bigint               DEFAULT 0 NOT NULL,
		CONSTRAINT "PK_TB_VIATURAS" PRIMARY KEY 
		(
			"VIA_ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*            tb_vitima_maria_da_penha            */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_vitima_maria_da_penha"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"N_PROCESSO"                           varchar (25)         NULL,
	"RESPONSAVEL_CONTATO"                  varchar (30)         NULL,
	"DATA_BO"                              datetime             NULL,
	"NATUREZA_BO"                          varchar (10)         NULL,
	"OUTRA_BO"                             varchar (30)         NULL,
	"DATA_DO_INDEFERIMENTO"                datetime             NULL,
	"DATA_CONTATO"                         datetime             NULL,
	"AUTOR_PRESENTE"                       varchar (10)         NULL,
	"NOME"                                 varchar (50)         NOT NULL,
	"RG"                                   varchar (15)         NULL,
	"CPF"                                  varchar (14)         NULL,
	"NACIONALIDADE"                        varchar (30)         NULL,
	"NATURALIDADE"                         varchar (50)         NULL,
	"UF"                                   varchar (10)         NULL,
	"CIDADE"                               varchar (50)         NULL,
	"BAIRRO"                               varchar (50)         NULL,
	"TIPO_LOGRADOURO"                      varchar (10)         NULL,
	"LOGRADOURO"                           varchar (50)         NULL,
	"CEP"                                  varchar (9)          NULL,
	"TELEFONE"                             varchar (14)         NULL,
	"CELULAR"                              varchar (15)         NULL,
	"EMAIL"                                varchar (150)        NULL,
	"EMPRESA"                              varchar (50)         NULL,
	"ENDERECO_EMPRESA"                     varchar (100)        NULL,
	"TELEFONE_EMPRESA"                     varchar (14)         NULL,
	"AUTOR"                                varchar (50)         NOT NULL,
	"RG_AUTOR"                             varchar (15)         NULL,
	"CPF_AUTOR"                            varchar (14)         NULL,
	"UF_AUTOR"                             varchar (10)         NULL,
	"CIDADE_AUTOR"                         varchar (50)         NULL,
	"BAIRRO_AUTOR"                         varchar (50)         NULL,
	"TIPO_LOGRADOURO_AUTOR"                varchar (10)         NULL,
	"LOGRADOURO_AUTOR"                     varchar (50)         NULL,
	"CEP_AUTOR"                            varchar (9)          NULL,
	"TELEFONE_AUTOR"                       varchar (14)         NULL,
	"CELULAR_AUTOR"                        varchar (15)         NULL,
	"EMPRESA_AUTOR"                        varchar (50)         NULL,
	"ENDERECO_EMPRESA_AUTOR"               varchar (100)        NULL,
	"TELEFONE_EMPRESA_AUTOR"               varchar (14)         NULL,
	"POSSUI_ARMA"                          smallint             DEFAULT 0 NULL,
	"FAZ_USO_DROGAS"                       smallint             NULL,
	"QUAL_DROGA"                           varchar (30)         NULL,
	"ATUALCITUACAO"                        varchar (100)        NULL,
	"SENTIMENTO_VITIMA"                    varchar (50)         NULL,
	"1_1"                                  varchar (10)         DEFAULT 'False' NULL,
	"1_2"                                  varchar (10)         NULL,
	"1_3"                                  varchar (10)         NULL,
	"1_4"                                  varchar (10)         NULL,
	"1_5"                                  varchar (10)         NULL,
	"1_6"                                  varchar (10)         NULL,
	"1_7"                                  varchar (10)         NULL,
	"2_1"                                  varchar (10)         NULL,
	"2_2"                                  varchar (10)         NULL,
	"2_3"                                  varchar (10)         NULL,
	"2_3_Especificar"                      varchar (30)         NULL,
	"2_4"                                  varchar (10)         NULL,
	"2_4_Especificar"                      varchar (30)         NULL,
	"2_5"                                  varchar (10)         NULL,
	"2_5_Especificar"                      varchar (30)         NULL,
	"2_6"                                  varchar (10)         NULL,
	"2_6_Especificar"                      varchar (30)         NULL,
	"2_7"                                  smallint             NULL,
	"2_8"                                  varchar (10)         NULL,
	"2_8_Especificar"                      varchar (30)         NULL,
	"3_1"                                  varchar (10)         NULL,
	"3_1_Especificar"                      varchar (50)         NULL,
	"3_2"                                  varchar (10)         NULL,
	"3_3"                                  varchar (10)         NULL,
	"3_4"                                  varchar (10)         NULL,
	"3_5"                                  varchar (10)         NULL,
	"3_6"                                  varchar (10)         NULL,
	"3_7"                                  varchar (10)         NULL,
	"11_1"                                 varchar (10)         NULL,
	"11_2"                                 varchar (10)         NULL,
	"11_3"                                 varchar (10)         NULL,
	"11_4"                                 varchar (10)         NULL,
	"11_5"                                 varchar (10)         NULL,
	"11_6"                                 varchar (10)         NULL,
	"12_1"                                 varchar (10)         NULL,
	"12_2"                                 varchar (10)         NULL,
	"12_3"                                 varchar (10)         NULL,
	"12_4"                                 varchar (10)         NULL,
	"12_5"                                 varchar (10)         NULL,
	"12_6"                                 varchar (10)         NULL,
	"12_7"                                 varchar (10)         NULL,
	"12_8"                                 varchar (10)         NULL,
	"12_9"                                 varchar (10)         NULL,
	"12_10"                                varchar (10)         NULL,
	"12_11"                                varchar (10)         NULL,
	"12_12"                                varchar (10)         NULL,
	"12_13"                                varchar (10)         NULL,
	"12_14"                                varchar (10)         NULL,
	"12_15"                                varchar (10)         NULL,
	"12_16"                                varchar (10)         NULL,
	"12_17"                                varchar (10)         NULL,
	"12_18"                                varchar (10)         NULL,
	"12_19"                                varchar (10)         NULL,
	"12_20"                                varchar (10)         NULL,
	"12_21"                                varchar (10)         NULL,
	"12_22"                                varchar (10)         NULL,
	"12_23"                                varchar (10)         NULL,
	"12_24"                                varchar (10)         NULL,
	"12_25"                                varchar (10)         NULL,
	"12_26"                                varchar (10)         NULL,
	"12_27"                                varchar (10)         NULL,
	"12_28"                                varchar (10)         NULL,
	"12_29"                                varchar (10)         NULL,
	"13_1"                                 varchar (10)         NULL,
	"13_1_1"                               varchar (50)         NULL,
	"13_2"                                 varchar (10)         NULL,
	"13_3"                                 varchar (10)         NULL,
	"13_3_1"                               varchar (50)         NULL,
	"14_1"                                 varchar (10)         NULL,
	"14_2"                                 varchar (10)         NULL,
	"14_3"                                 varchar (10)         NULL,
	"14_4"                                 varchar (10)         NULL,
	"14_5"                                 varchar (10)         NULL,
	"14_6"                                 varchar (10)         NULL,
	"14_7"                                 varchar (10)         NULL,
	"15_1"                                 varchar (10)         NULL,
	"15_2"                                 varchar (10)         NULL,
	"15_3"                                 varchar (10)         NULL,
	"15_4"                                 varchar (10)         NULL,
	"15_5"                                 varchar (10)         NULL,
	"15_6"                                 varchar (10)         NULL,
	"15_7"                                 varchar (10)         NULL,
	"15_8"                                 varchar (10)         NULL,
	"PRETENDE_REATAR_PQ"                   varchar (50)         NULL,
	"OBSERVACOES"                          text                 NULL,
	"NUMERO"                               bigint               NULL,
	"RE_MATRICULA"                         varchar (10)         NULL,
		CONSTRAINT "PK_TB_VITIMA_MARIA_DA_PENHA" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*    Criação de Tabelas, Indices e Atribuição de Default    */
/*        tb_vitima_visita        */
/*------------------------------------------------------------*/

 CREATE TABLE "tb_vitima_visita"(
	"ID"                                   bigint               NOT NULL AUTO_INCREMENT	,INDEX("ID"),
	"ID_VITIMA"                            bigint               NOT NULL,
	"DATA"                                 datetime             NULL,
	"PROT"                                 varchar (10)         NULL,
	"VTR"                                  varchar (10)         NULL,
	"QTR"                                  datetime             NULL,
	"RONDA"                                varchar (10)         NULL,
	"DELIGENCIA"                           varchar (10)         NULL,
	"ENCARREGADO"                          varchar (10)         NULL,
	"MOTORISTA"                            varchar (10)         NULL,
	"AUXILIAR"                             varchar (10)         NULL,
	"AUXILIAR2"                            varchar (10)         NULL,
	"OBSERVACOES"                          text                 NULL,
		CONSTRAINT "PK_TB_VITIMA_VISITA" PRIMARY KEY 
		(
			"ID"
		) 
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*          viaturas_disponiveis          */
/*------------------------------------------------------------*/

 CREATE VIEW "viaturas_disponiveis"AS(
select [TB_VIATURAS].[VIA_ID], [TB_VIATURAS].[VIA_STATUS], [TB_VIATURAS].[VIA_N_PATRIMONIO], [TB_VIATURAS].[VIA_VALOR], [TB_VIATURAS].[VIA_DATA_AQUISICAO], [TB_VIATURAS].[VIA_ANO_MODELO], [TB_VIATURAS].[VIA_ANO], [TB_VIATURAS].[VIA_TIPO], [TB_VIATURAS].[VIA_COR], [TB_VIATURAS].[VIA_KM], [TB_VIATURAS].[VIA_CHASSI], [TB_VIATURAS].[VIA_RENAVAN], [TB_VIATURAS].[VIA_COMBUSTIVEL], [TB_VIATURAS].[VIA_PREFIXO], [TB_VIATURAS].[VIA_PLACA], [TB_VIATURAS].[VIA_VERSAO], [TB_VIATURAS].[VIA_MODELO], [TB_VIATURAS].[VIA_VIATURA], [TB_VIATURAS].[VIA_MARCA]
 from [TB_VIATURAS]
  WHERE VIA_STATUS = 2
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*           viaturas_em_atendimento           */
/*------------------------------------------------------------*/

 CREATE VIEW "viaturas_em_atendimento"AS(
select [TB_VIATURAS].[VIA_ID], [TB_VIATURAS].[VIA_VIATURA], [TB_VIATURAS].[VIA_MARCA], [TB_VIATURAS].[VIA_MODELO], [TB_VIATURAS].[VIA_PREFIXO], [TB_VIATURAS].[VIA_PLACA], [TB_VIATURAS].[VIA_VERSAO], [TB_VIATURAS].[VIA_COMBUSTIVEL], [TB_VIATURAS].[VIA_RENAVAN], [TB_VIATURAS].[VIA_CHASSI], [TB_VIATURAS].[VIA_KM], [TB_VIATURAS].[VIA_COR], [TB_VIATURAS].[VIA_TIPO], [TB_VIATURAS].[VIA_ANO], [TB_VIATURAS].[VIA_ANO_MODELO], [TB_VIATURAS].[VIA_DATA_AQUISICAO], [TB_VIATURAS].[VIA_VALOR], [TB_VIATURAS].[VIA_N_PATRIMONIO], [TB_VIATURAS].[VIA_STATUS]
 from [TB_VIATURAS]
WHERE VIA_STATUS = 3
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        taloes_em_aberto        */
/*------------------------------------------------------------*/

 CREATE VIEW "taloes_em_aberto"AS(
select `tb_taloes`.`ID_TALAO`, `tb_taloes`.`TAL_DATA`, `tb_taloes`.`TAL_NUMERO`, `tb_taloes`.`TAL_VIATURA`, `tb_taloes`.`TAL_STATUS`, `tb_taloes`.`TAL_OBSERVACAO`, `tb_taloes`.`TAL_DATA_FIM`, `tb_taloes`.`TAL_KM_INICIO`, `tb_taloes`.`TAL_KM_FIM`, `tb_taloes`.`TAL_NAT_INICIO`, `tb_taloes`.`TAL_NAT_FIM`, `tb_taloes`.`TAL_LOCAL_NATUREZA`, `tb_taloes`.`TAL_BAIRRO`, `tb_taloes`.`TAL_ENCARREGADO`, `tb_taloes`.`TAL_MOTORISTA`, `tb_taloes`.`TAL_TER_HOMEM`, `tb_taloes`.`TAL_QUA_HOMEM`, `tb_taloes`.`TAL_QUI_HOMEM`, `tb_taloes`.`TAL_RADIO_OPERADOR`, `tb_taloes`.`TAL_CIDADE` from `tb_taloes`
 where (`tb_taloes`.`TAL_STATUS` = 1)  or (`tb_taloes`.`TAL_STATUS` = 4)  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*           boletins_em_atendimento           */
/*------------------------------------------------------------*/

 CREATE VIEW "boletins_em_atendimento"AS(
select [TB_BOL_OCORRENCIA].[BOL_OCOR_ID], [TB_BOL_OCORRENCIA].[BOL_ATENDENTE], [TB_BOL_OCORRENCIA].[BOL_PRIORIDADE], [TB_BOL_OCORRENCIA].[BOL_STATUS], [TB_BOL_OCORRENCIA].[BOL_SOLICITANTE], [TB_BOL_OCORRENCIA].[BOL_TELEFONE], [TB_BOL_OCORRENCIA].[BOL_TIPO_LOGRADOURO], [TB_BOL_OCORRENCIA].[BOL_LOGRADOURO], [TB_BOL_OCORRENCIA].[BOL_BAIRRO], [TB_BOL_OCORRENCIA].[BOL_CIDADE], [TB_BOL_OCORRENCIA].[BOL_CEP], [TB_BOL_OCORRENCIA].[BOL_UF], [TB_BOL_OCORRENCIA].[BOL_REFERENCIA], [TB_BOL_OCORRENCIA].[BOL_NATUREZA], [TB_BOL_OCORRENCIA].[BOL_NATUREZA_FINAL], [TB_BOL_OCORRENCIA].[BOL_RESUMO], [TB_BOL_OCORRENCIA].[BOL_HISTORICO], [TB_BOL_OCORRENCIA].[BOL_HISTORICO_FINAL], [TB_BOL_OCORRENCIA].[BOL_NUMERO], [TB_BOL_OCORRENCIA].[BOL_DATA], [TB_BOL_OCORRENCIA].[BOL_NUM_TALAO], [TB_BOL_OCORRENCIA].[BOL_DATA_FIM], [TB_BOL_OCORRENCIA].[BOL_VIATURA]
 from [TB_BOL_OCORRENCIA]
WHERE [TB_BOL_OCORRENCIA].[BOL_STATUS] = 1
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*            registros_em_atendimento            */
/*------------------------------------------------------------*/

 CREATE VIEW "registros_em_atendimento"AS(
select [TB_REGISTRO_OCORRENCIAS].[ID_REG_OCOR], [TB_REGISTRO_OCORRENCIAS].[REG_NUM_TALAO], [TB_REGISTRO_OCORRENCIAS].[REG_VIATURA], [TB_REGISTRO_OCORRENCIAS].[REG_DATA], [TB_REGISTRO_OCORRENCIAS].[REG_NATUREZA], [TB_REGISTRO_OCORRENCIAS].[REG_ATENDENTE], [TB_REGISTRO_OCORRENCIAS].[REG_PRIORIDADE], [TB_REGISTRO_OCORRENCIAS].[REG_STATUS], [TB_REGISTRO_OCORRENCIAS].[REG_SOLICITANTE], [TB_REGISTRO_OCORRENCIAS].[REG_TELEFONE], [TB_REGISTRO_OCORRENCIAS].[REG_TIPO_LOGRADOURO], [TB_REGISTRO_OCORRENCIAS].[REG_LOGRADOURO], [TB_REGISTRO_OCORRENCIAS].[REG_BAIRRO], [TB_REGISTRO_OCORRENCIAS].[REG_CIDADE], [TB_REGISTRO_OCORRENCIAS].[REG_CEP], [TB_REGISTRO_OCORRENCIAS].[REG_UF], [TB_REGISTRO_OCORRENCIAS].[REG_REFERENCIA], [TB_REGISTRO_OCORRENCIAS].[REG_NATUREZA_FINAL], [TB_REGISTRO_OCORRENCIAS].[REG_RESUMO], [TB_REGISTRO_OCORRENCIAS].[REG_HISTORICO], [TB_REGISTRO_OCORRENCIAS].[REG_HISTORICO_FINAL], [TB_REGISTRO_OCORRENCIAS].[REG_DATA_FINAL]
 from [TB_REGISTRO_OCORRENCIAS]
WHERE [TB_REGISTRO_OCORRENCIAS].[REG_STATUS] = 1
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*       gcm_disponivel       */
/*------------------------------------------------------------*/

 CREATE VIEW "gcm_disponivel"AS(
select `tb_gcm`.`GCM_ID`, `tb_gcm`.`GCM_GUERRA`, `tb_gcm`.`GCM_NOME`, `tb_gcm`.`GCM_RE_MATRICULA`, `tb_gcm`.`GCM_RG`, `tb_gcm`.`GCM_CPF`, `tb_gcm`.`GCM_ENDERECO`, `tb_gcm`.`GCM_BAIRRO`, `tb_gcm`.`GCM_CIDADE`, `tb_gcm`.`GCM_STATUS`, `tb_gcm`.`GCM_RG_FUNCIONAL`, `tb_gcm`.`GCM_TITULO_ELEITOR`, `tb_gcm`.`GCM_CARTEIRA_TRABALHO`, `tb_gcm`.`GCM_TIPO_LOGRADOURO`, `tb_gcm`.`GCM_ELOGIOS`, `tb_gcm`.`GCM_UF`, `tb_gcm`.`GCM_RG_FUNCIONAL_PMJ`, `tb_gcm`.`GCM_COMPORTAMENTO`, `tb_gcm`.`GCM_OBSERVACAO`, `tb_gcm`.`GCM_CEP`, `tb_gcm`.`GCM_CONTATO`, `tb_gcm`.`GCM_CELULAR`, `tb_gcm`.`GCM_TELEFONE`, `tb_gcm`.`GCM_CATEG_CNH`, `tb_gcm`.`GCM_FOTO`, `tb_gcm`.`GCM_DATA_EXP_ID_FUNCIONAL`, `tb_gcm`.`GCM_DATA_EXP_PORTE`, `tb_gcm`.`GCM_FATOR_RH`, `tb_gcm`.`GCM_NACIONALIDADE`, `tb_gcm`.`GCM_NATURALIDADE`, `tb_gcm`.`GCM_TIPO_SANGUINEO`, `tb_gcm`.`GCM_DATA_DEMISSAO`, `tb_gcm`.`GCM_DATA_ADMISSAO`, `tb_gcm`.`GCM_VALIDADE_CNH`, `tb_gcm`.`GCM_DATA_NASC`, `tb_gcm`.`GCM_CNH`, `tb_gcm`.`GCM_VALIDADE_PORTE`, `tb_gcm`.`GCM_NUMERO_PORTE`, `tb_gcm`.`GCM_PAI`, `tb_gcm`.`GCM_MAE`, `tb_gcm`.`GCM_FUNCAO` from `tb_gcm`
 where (`tb_gcm`.`GCM_STATUS` = 1)  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        armas_disponivel        */
/*------------------------------------------------------------*/

 CREATE VIEW "armas_disponivel"AS(
select `tb_armas`.`ARM_NUM_DO_REGISTRO`, `tb_armas`.`ARM_DATA_DE_VENC_REGISTRO`, `tb_armas`.`ARM_RAZAO_SOCIAL`, `tb_armas`.`ARM_CNPJ_CPF`, `tb_armas`.`ARM_NUM_SINARM`, `tb_armas`.`ARM_ESPECIE`, `tb_armas`.`ARM_MARCA`, `tb_armas`.`ARM_MODELO_M`, `tb_armas`.`ARM_NUM_DA_ARMA`, `tb_armas`.`ARM_CALIBRE`, `tb_armas`.`ARM_CAPACIDADE_DE_TIRO`, `tb_armas`.`ARM_FUNCIONAMENTO`, `tb_armas`.`ARM_ACABAMENTO`, `tb_armas`.`ARM_QUANTIDADE_CANO`, `tb_armas`.`ARM_COMPRIMENTO_CANO`, `tb_armas`.`ARM_TP_DE_ALMA`, `tb_armas`.`ARM_QT_DE_RAIAS`, `tb_armas`.`ARM_SENTIDO_RAIAS`, `tb_armas`.`ARM_PAIS_DE_FABRICACAO`, `tb_armas`.`ARM_ID`, `tb_armas`.`ARM_CPF`, `tb_armas`.`ARM_STATUS` from `tb_armas`
 where (`tb_armas`.`ARM_STATUS` = 2)  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*       arma_cautelada       */
/*------------------------------------------------------------*/

 CREATE VIEW "arma_cautelada"AS(
select `tb_armas`.`ARM_NUM_DO_REGISTRO`, `tb_armas`.`ARM_DATA_DE_VENC_REGISTRO`, `tb_armas`.`ARM_RAZAO_SOCIAL`, `tb_armas`.`ARM_CNPJ_CPF`, `tb_armas`.`ARM_NUM_SINARM`, `tb_armas`.`ARM_ESPECIE`, `tb_armas`.`ARM_MARCA`, `tb_armas`.`ARM_MODELO_M`, `tb_armas`.`ARM_NUM_DA_ARMA`, `tb_armas`.`ARM_CALIBRE`, `tb_armas`.`ARM_CAPACIDADE_DE_TIRO`, `tb_armas`.`ARM_FUNCIONAMENTO`, `tb_armas`.`ARM_ACABAMENTO`, `tb_armas`.`ARM_QUANTIDADE_CANO`, `tb_armas`.`ARM_COMPRIMENTO_CANO`, `tb_armas`.`ARM_TP_DE_ALMA`, `tb_armas`.`ARM_QT_DE_RAIAS`, `tb_armas`.`ARM_SENTIDO_RAIAS`, `tb_armas`.`ARM_PAIS_DE_FABRICACAO`, `tb_armas`.`ARM_ID`, `tb_armas`.`ARM_CPF`, `tb_armas`.`ARM_STATUS` from `tb_armas`
 where (`tb_armas`.`ARM_STATUS` = 6)  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*   receita   */
/*------------------------------------------------------------*/

 CREATE VIEW "receita"AS(
select `tb_livro_caixa`.`ID`, `tb_livro_caixa`.`TIPO`, `tb_livro_caixa`.`DATA`, `tb_livro_caixa`.`CATEGORIA`, `tb_livro_caixa`.`VALOR`, `tb_livro_caixa`.`DESCRICAO` from `tb_livro_caixa`
 where (`tb_livro_caixa`.`TIPO` = 'R')  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*    despesas    */
/*------------------------------------------------------------*/

 CREATE VIEW "despesas"AS(
select `tb_livro_caixa`.`ID`, `tb_livro_caixa`.`TIPO`, `tb_livro_caixa`.`DATA`, `tb_livro_caixa`.`CATEGORIA`, `tb_livro_caixa`.`VALOR`, `tb_livro_caixa`.`DESCRICAO` from `tb_livro_caixa`
 where (`tb_livro_caixa`.`TIPO` = 'D')  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*          ordem_servico_aberto          */
/*------------------------------------------------------------*/

 CREATE VIEW "ordem_servico_aberto"AS(
select `tb_ordem_servico`.`ID_OS`, `tb_ordem_servico`.`OS_DATA`, `tb_ordem_servico`.`OS_HORA`, `tb_ordem_servico`.`OS_STATUS`, `tb_ordem_servico`.`OS_PRIORIDADE`, `tb_ordem_servico`.`OS_VIATURA`, `tb_ordem_servico`.`OS_DESCRICAO`, `tb_ordem_servico`.`OS_RESUMO` from `tb_ordem_servico`
 where ((`tb_ordem_servico`.`OS_STATUS` = 'A') or `tb_ordem_servico`.`OS_STATUS` = 'I')  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        mapa_forca_aberto        */
/*------------------------------------------------------------*/

 CREATE VIEW "mapa_forca_aberto"AS(
select `tb_mapa_forca`.`ID_MAPA` AS `ID_MAPA`,`tb_mapa_forca`.`DATA` AS `DATA`,`tb_mapa_forca`.`HORARIO_PLANTAO` AS `HORARIO_PLANTAO`,`tb_mapa_forca`.`STATUS` AS `STATUS`,`tb_mapa_forca`.`RADIO_OPERADOR` AS `RADIO_OPERADOR`,`tb_mapa_forca`.`EQUIPE` AS `EQUIPE`,`tb_mapa_forca`.`INTERESSADO` AS `INTERESSADO`,`tb_mapa_forca`.`RELATORIO_INICIO` AS `RELATORIO_INICIO`,`tb_mapa_forca`.`RELATORIO_FIM` AS `RELATORIO_FIM`,`tb_plantao`.`HORARIO` AS `PLANTAO` from (`tb_mapa_forca` join `tb_plantao` on((`tb_plantao`.`ID` = `tb_mapa_forca`.`HORARIO_PLANTAO`))) where (`tb_mapa_forca`.`STATUS` = 1)
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*          mapa_forca_relatorio          */
/*------------------------------------------------------------*/

 CREATE VIEW "mapa_forca_relatorio"AS(
select `tb_mapa_forca`.`ID_MAPA`, `tb_mapa_forca`.`STATUS`, `tb_mapa_forca`.`DATA`, `tb_mapa_forca`.`HORARIO_PLANTAO`, `tb_mapa_forca`.`RADIO_OPERADOR`, `tb_mapa_forca`.`EQUIPE`, `tb_mapa_forca`.`INTERESSADO`, `tb_mapa_forca`.`RELATORIO_INICIO`, `tb_mapa_forca`.`RELATORIO_FIM`, `tb_especializado`.`ID_ES`, `tb_especializado`.`ES_ID_MAPA`, `tb_especializado`.`ES_VIATURA`, `tb_especializado`.`ES_ENCARREGADO`, `tb_especializado`.`ES_MOTORISTA`, `tb_especializado`.`ES_AUXILIAR`, `tb_especializado`.`ES_AUXILIAR2`, `tb_especializado`.`ES_AUXILIAR3`, `tb_especializado`.`ES_SETOR`, `tb_especializado`.`ES_HORARIO`, `tb_ostensivo_mapa`.`ID_OM`, `tb_ostensivo_mapa`.`OM_ID_MAPA`, `tb_ostensivo_mapa`.`OM_VIATURA`, `tb_ostensivo_mapa`.`OM_ENCARREGADO`, `tb_ostensivo_mapa`.`OM_MOTORISTA`, `tb_ostensivo_mapa`.`OM_AUXILIAR`, `tb_ostensivo_mapa`.`OM_AUXILIAR2`, `tb_ostensivo_mapa`.`OM_AUXILIAR3`, `tb_ostensivo_mapa`.`OM_SETOR`, `tb_ostensivo_mapa`.`OM_HORARIO`, `tb_postos_fixos_mapa`.`ID_PF`, `tb_postos_fixos_mapa`.`PF_ID_MAPA`, `tb_postos_fixos_mapa`.`PF_POSTO`, `tb_postos_fixos_mapa`.`PF_GCM`, `tb_postos_fixos_mapa`.`PF_GCM2`, `tb_postos_fixos_mapa`.`PF_GCM3`, `tb_postos_fixos_mapa`.`PF_GCM4`, `tb_postos_fixos_mapa`.`PF_GCM5`, `tb_postos_fixos_mapa`.`PF_HORARIO`, `tb_novidades_efetivo`.`ID_N`, `tb_novidades_efetivo`.`N_ID_MAPA`, `tb_novidades_efetivo`.`N_FOLGA` from `tb_mapa_forca`, `tb_especializado`, `tb_ostensivo_mapa`, `tb_postos_fixos_mapa`, `tb_novidades_efetivo`
 inner join `tb_especializado` as `MAPA_ESPECIALIZADO` on `tb_mapa_forca`.`ID_MAPA` = `MAPA_ESPECIALIZADO`.`ES_ID_MAPA`
 inner join `tb_postos_fixos_mapa` as `MAPA_POSTOS` on `tb_mapa_forca`.`ID_MAPA` = `MAPA_POSTOS`.`PF_ID_MAPA`
 inner join `tb_ostensivo_mapa` as `OSTENSIVO_MAPA` on `tb_mapa_forca`.`ID_MAPA` = `OSTENSIVO_MAPA`.`OM_ID_MAPA`
 inner join `tb_novidades_efetivo` as `MAPA_NOVIDADES` on `tb_mapa_forca`.`ID_MAPA` = `MAPA_NOVIDADES`.`N_ID_MAPA`
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      aviso_ferias      */
/*------------------------------------------------------------*/

 CREATE VIEW "aviso_ferias"AS(
select `tb_gcm`.`GCM_NOME` AS `GCM_NOME`,`tb_gcm`.`GCM_RG_FUNCIONAL_PMJ` AS `GCM_RG_FUNCIONAL_PMJ`,`tb_folgas_ferias`.`FERIAR_ID` AS `FERIAR_ID`,`tb_folgas_ferias`.`FERIAS_ID_GCM` AS `FERIAS_ID_GCM`,`tb_folgas_ferias`.`FERIAS_DESCRICAO` AS `FERIAS_DESCRICAO`,`tb_folgas_ferias`.`FERIAS_TIPO_FOLGA` AS `FERIAS_TIPO_FOLGA`,`tb_folgas_ferias`.`FERIAS_DATA_INICIO` AS `FERIAS_DATA_INICIO`,`tb_folgas_ferias`.`FERIAS_DIAS` AS `FERIAS_DIAS`,`tb_folgas_ferias`.`FERIAS_DATA_TERMINO` AS `FERIAS_DATA_TERMINO`,`tb_folgas_ferias`.`FERIAS_RESUMO` AS `FERIAS_RESUMO` from (`tb_folgas_ferias` join `tb_gcm` on((`tb_folgas_ferias`.`FERIAS_ID_GCM` = `tb_gcm`.`GCM_ID`)))
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        aviso_colaborador        */
/*------------------------------------------------------------*/

 CREATE VIEW "aviso_colaborador"AS(
select `tb_colaborador`.`NOME` AS `Nome`,`tb_colaborador`.`FUNCAO` AS `Funcao`,`tb_colaborador`.`RG_FUNCIONAL_PMJ` AS `RG_Funcional`,`tb_folgas_ferias_colaborador`.`FERIAS_ID` AS `Ferias_ID`,`tb_folgas_ferias_colaborador`.`FERIAS_ID_COLABORADOR` AS `Colaborador`,`tb_folgas_ferias_colaborador`.`FERIAS_DATA_INICIO` AS `Data_Inicio`,`tb_folgas_ferias_colaborador`.`FERIAS_DATA_TERMINO` AS `Data_Termino`,`tb_folgas_ferias_colaborador`.`FERIAS_DIAS` AS `Dias`,`tb_folgas_ferias_colaborador`.`FERIAS_DESCRICAO` AS `Descricao`,`tb_folgas_ferias_colaborador`.`FERIAS_RESUMO` AS `Resumo`,`tb_folgas_ferias_colaborador`.`FERIAS_TIPO_FOLGA` AS `Tipo_Folga` from (`tb_folgas_ferias_colaborador` join `tb_colaborador` on((`tb_folgas_ferias_colaborador`.`FERIAS_ID_COLABORADOR` = `tb_colaborador`.`ID`)))
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*           ordem_servico_relatorio           */
/*------------------------------------------------------------*/

 CREATE VIEW "ordem_servico_relatorio"AS(
select `tb_ordem_servico`.`ID_OS`, `tb_ordem_servico`.`OS_DATA`, `tb_ordem_servico`.`OS_HORA`, `tb_ordem_servico`.`OS_STATUS`, `tb_ordem_servico`.`OS_PRIORIDADE`, `tb_ordem_servico`.`OS_VIATURA`, `tb_ordem_servico`.`OS_DESCRICAO`, `tb_ordem_servico`.`OS_RESUMO`, DAY(`tb_ordem_servico`.`OS_DATA`) as Por_Data from `tb_ordem_servico`
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        taloes_relatorio        */
/*------------------------------------------------------------*/

 CREATE VIEW "taloes_relatorio"AS(
select `tb_taloes`.`ID_TALAO`, `tb_taloes`.`TAL_RADIO_OPERADOR`, `tb_taloes`.`TAL_STATUS`, `tb_taloes`.`TAL_DATA`, `tb_taloes`.`TAL_DATA_FIM`, `tb_taloes`.`TAL_NUMERO`, `tb_taloes`.`TAL_VIATURA`, `tb_taloes`.`TAL_KM_INICIO`, `tb_taloes`.`TAL_KM_FIM`, `tb_taloes`.`TAL_NAT_INICIO`, `tb_taloes`.`TAL_NAT_FIM`, `tb_taloes`.`TAL_CIDADE`, `tb_taloes`.`TAL_BAIRRO`, `tb_taloes`.`TAL_LOCAL_NATUREZA`, `tb_taloes`.`TAL_ENCARREGADO`, `tb_taloes`.`TAL_MOTORISTA`, `tb_taloes`.`TAL_TER_HOMEM`, `tb_taloes`.`TAL_QUA_HOMEM`, `tb_taloes`.`TAL_QUI_HOMEM`, `tb_taloes`.`TAL_OBSERVACAO`, DAY(`tb_taloes`.`TAL_DATA`) as data_talao from `tb_taloes`
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      especializado      */
/*------------------------------------------------------------*/

 CREATE VIEW "especializado"AS(
select `gcm`.`tb_especializado`.`ID_ES` AS `ID_ES`,`gcm`.`tb_especializado`.`ES_ID_MAPA` AS `ES_ID_MAPA`,`gcm`.`tb_especializado`.`ES_VIATURA` AS `ES_VIATURA`,`gcm`.`tb_plantao`.`HORARIO` AS `PLANTAO`,`gcm`.`tb_setor`.`SETOR` AS `SETOR`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `RE_ENCARREGADO`,`gcm_motorista`.`GCM_RE_MATRICULA` AS `RE_MOTORISTA`,`gcm_auxiliar`.`GCM_RE_MATRICULA` AS `RE_AUXILIAR` from (((((`gcm`.`tb_especializado` join `gcm`.`tb_plantao` on((`gcm`.`tb_plantao`.`ID` = `gcm`.`tb_especializado`.`ES_HORARIO`))) join `gcm`.`tb_setor` on((`gcm`.`tb_setor`.`ID` = `gcm`.`tb_especializado`.`ES_SETOR`))) join `gcm`.`tb_gcm` on((`gcm`.`tb_gcm`.`GCM_ID` = `gcm`.`tb_especializado`.`ES_ENCARREGADO`))) join `gcm`.`gcm_motorista` on((`gcm_motorista`.`GCM_ID` = `gcm`.`tb_especializado`.`ES_MOTORISTA`))) join `gcm`.`gcm_auxiliar` on((`gcm_auxiliar`.`GCM_ID` = `gcm`.`tb_especializado`.`ES_AUXILIAR`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      gcm_auxiliar      */
/*------------------------------------------------------------*/

 CREATE VIEW "gcm_auxiliar"AS(
select `gcm`.`tb_gcm`.`GCM_ID` AS `GCM_ID`,`gcm`.`tb_gcm`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm`.`tb_gcm`.`GCM_RG` AS `GCM_RG`,`gcm`.`tb_gcm`.`GCM_CPF` AS `GCM_CPF`,`gcm`.`tb_gcm`.`GCM_ENDERECO` AS `GCM_ENDERECO`,`gcm`.`tb_gcm`.`GCM_BAIRRO` AS `GCM_BAIRRO`,`gcm`.`tb_gcm`.`GCM_NUMERO` AS `GCM_NUMERO`,`gcm`.`tb_gcm`.`GCM_CIDADE` AS `GCM_CIDADE`,`gcm`.`tb_gcm`.`GCM_PAI` AS `GCM_PAI`,`gcm`.`tb_gcm`.`GCM_MAE` AS `GCM_MAE`,`gcm`.`tb_gcm`.`GCM_FUNCAO` AS `GCM_FUNCAO`,`gcm`.`tb_gcm`.`GCM_NUMERO_PORTE` AS `GCM_NUMERO_PORTE`,`gcm`.`tb_gcm`.`GCM_VALIDADE_PORTE` AS `GCM_VALIDADE_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_NASC` AS `GCM_DATA_NASC`,`gcm`.`tb_gcm`.`GCM_CNH` AS `GCM_CNH`,`gcm`.`tb_gcm`.`GCM_VALIDADE_CNH` AS `GCM_VALIDADE_CNH`,`gcm`.`tb_gcm`.`GCM_DATA_ADMISSAO` AS `GCM_DATA_ADMISSAO`,`gcm`.`tb_gcm`.`GCM_DATA_DEMISSAO` AS `GCM_DATA_DEMISSAO`,`gcm`.`tb_gcm`.`GCM_TIPO_SANGUINEO` AS `GCM_TIPO_SANGUINEO`,`gcm`.`tb_gcm`.`GCM_NATURALIDADE` AS `GCM_NATURALIDADE`,`gcm`.`tb_gcm`.`GCM_NACIONALIDADE` AS `GCM_NACIONALIDADE`,`gcm`.`tb_gcm`.`GCM_FATOR_RH` AS `GCM_FATOR_RH`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_PORTE` AS `GCM_DATA_EXP_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_ID_FUNCIONAL` AS `GCM_DATA_EXP_ID_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_FOTO` AS `GCM_FOTO`,`gcm`.`tb_gcm`.`GCM_CATEG_CNH` AS `GCM_CATEG_CNH`,`gcm`.`tb_gcm`.`GCM_TELEFONE` AS `GCM_TELEFONE`,`gcm`.`tb_gcm`.`GCM_CELULAR` AS `GCM_CELULAR`,`gcm`.`tb_gcm`.`GCM_CONTATO` AS `GCM_CONTATO`,`gcm`.`tb_gcm`.`GCM_CEP` AS `GCM_CEP`,`gcm`.`tb_gcm`.`GCM_OBSERVACAO` AS `GCM_OBSERVACAO`,`gcm`.`tb_gcm`.`GCM_COMPORTAMENTO` AS `GCM_COMPORTAMENTO`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL_PMJ` AS `GCM_RG_FUNCIONAL_PMJ`,`gcm`.`tb_gcm`.`GCM_ELOGIOS` AS `GCM_ELOGIOS`,`gcm`.`tb_gcm`.`GCM_TIPO_LOGRADOURO` AS `GCM_TIPO_LOGRADOURO`,`gcm`.`tb_gcm`.`GCM_UF` AS `GCM_UF`,`gcm`.`tb_gcm`.`GCM_CARTEIRA_TRABALHO` AS `GCM_CARTEIRA_TRABALHO`,`gcm`.`tb_gcm`.`GCM_TITULO_ELEITOR` AS `GCM_TITULO_ELEITOR`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL` AS `GCM_RG_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_STATUS` AS `GCM_STATUS`,`gcm`.`tb_gcm`.`GCM_GUERRA` AS `GCM_GUERRA`,`gcm`.`tb_gcm`.`GCM_EMAIL` AS `GCM_EMAIL` from `gcm`.`tb_gcm`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*       gcm_auxiliar_2       */
/*------------------------------------------------------------*/

 CREATE VIEW "gcm_auxiliar_2"AS(
select `gcm`.`tb_gcm`.`GCM_ID` AS `GCM_ID`,`gcm`.`tb_gcm`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm`.`tb_gcm`.`GCM_RG` AS `GCM_RG`,`gcm`.`tb_gcm`.`GCM_CPF` AS `GCM_CPF`,`gcm`.`tb_gcm`.`GCM_ENDERECO` AS `GCM_ENDERECO`,`gcm`.`tb_gcm`.`GCM_BAIRRO` AS `GCM_BAIRRO`,`gcm`.`tb_gcm`.`GCM_NUMERO` AS `GCM_NUMERO`,`gcm`.`tb_gcm`.`GCM_CIDADE` AS `GCM_CIDADE`,`gcm`.`tb_gcm`.`GCM_PAI` AS `GCM_PAI`,`gcm`.`tb_gcm`.`GCM_MAE` AS `GCM_MAE`,`gcm`.`tb_gcm`.`GCM_FUNCAO` AS `GCM_FUNCAO`,`gcm`.`tb_gcm`.`GCM_NUMERO_PORTE` AS `GCM_NUMERO_PORTE`,`gcm`.`tb_gcm`.`GCM_VALIDADE_PORTE` AS `GCM_VALIDADE_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_NASC` AS `GCM_DATA_NASC`,`gcm`.`tb_gcm`.`GCM_CNH` AS `GCM_CNH`,`gcm`.`tb_gcm`.`GCM_VALIDADE_CNH` AS `GCM_VALIDADE_CNH`,`gcm`.`tb_gcm`.`GCM_DATA_ADMISSAO` AS `GCM_DATA_ADMISSAO`,`gcm`.`tb_gcm`.`GCM_DATA_DEMISSAO` AS `GCM_DATA_DEMISSAO`,`gcm`.`tb_gcm`.`GCM_TIPO_SANGUINEO` AS `GCM_TIPO_SANGUINEO`,`gcm`.`tb_gcm`.`GCM_NATURALIDADE` AS `GCM_NATURALIDADE`,`gcm`.`tb_gcm`.`GCM_NACIONALIDADE` AS `GCM_NACIONALIDADE`,`gcm`.`tb_gcm`.`GCM_FATOR_RH` AS `GCM_FATOR_RH`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_PORTE` AS `GCM_DATA_EXP_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_ID_FUNCIONAL` AS `GCM_DATA_EXP_ID_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_FOTO` AS `GCM_FOTO`,`gcm`.`tb_gcm`.`GCM_CATEG_CNH` AS `GCM_CATEG_CNH`,`gcm`.`tb_gcm`.`GCM_TELEFONE` AS `GCM_TELEFONE`,`gcm`.`tb_gcm`.`GCM_CELULAR` AS `GCM_CELULAR`,`gcm`.`tb_gcm`.`GCM_CONTATO` AS `GCM_CONTATO`,`gcm`.`tb_gcm`.`GCM_CEP` AS `GCM_CEP`,`gcm`.`tb_gcm`.`GCM_OBSERVACAO` AS `GCM_OBSERVACAO`,`gcm`.`tb_gcm`.`GCM_COMPORTAMENTO` AS `GCM_COMPORTAMENTO`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL_PMJ` AS `GCM_RG_FUNCIONAL_PMJ`,`gcm`.`tb_gcm`.`GCM_ELOGIOS` AS `GCM_ELOGIOS`,`gcm`.`tb_gcm`.`GCM_TIPO_LOGRADOURO` AS `GCM_TIPO_LOGRADOURO`,`gcm`.`tb_gcm`.`GCM_UF` AS `GCM_UF`,`gcm`.`tb_gcm`.`GCM_CARTEIRA_TRABALHO` AS `GCM_CARTEIRA_TRABALHO`,`gcm`.`tb_gcm`.`GCM_TITULO_ELEITOR` AS `GCM_TITULO_ELEITOR`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL` AS `GCM_RG_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_STATUS` AS `GCM_STATUS`,`gcm`.`tb_gcm`.`GCM_GUERRA` AS `GCM_GUERRA`,`gcm`.`tb_gcm`.`GCM_EMAIL` AS `GCM_EMAIL` from `gcm`.`tb_gcm`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*       gcm_auxiliar_3       */
/*------------------------------------------------------------*/

 CREATE VIEW "gcm_auxiliar_3"AS(
select `gcm`.`tb_gcm`.`GCM_ID` AS `GCM_ID`,`gcm`.`tb_gcm`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm`.`tb_gcm`.`GCM_RG` AS `GCM_RG`,`gcm`.`tb_gcm`.`GCM_CPF` AS `GCM_CPF`,`gcm`.`tb_gcm`.`GCM_ENDERECO` AS `GCM_ENDERECO`,`gcm`.`tb_gcm`.`GCM_BAIRRO` AS `GCM_BAIRRO`,`gcm`.`tb_gcm`.`GCM_NUMERO` AS `GCM_NUMERO`,`gcm`.`tb_gcm`.`GCM_CIDADE` AS `GCM_CIDADE`,`gcm`.`tb_gcm`.`GCM_PAI` AS `GCM_PAI`,`gcm`.`tb_gcm`.`GCM_MAE` AS `GCM_MAE`,`gcm`.`tb_gcm`.`GCM_FUNCAO` AS `GCM_FUNCAO`,`gcm`.`tb_gcm`.`GCM_NUMERO_PORTE` AS `GCM_NUMERO_PORTE`,`gcm`.`tb_gcm`.`GCM_VALIDADE_PORTE` AS `GCM_VALIDADE_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_NASC` AS `GCM_DATA_NASC`,`gcm`.`tb_gcm`.`GCM_CNH` AS `GCM_CNH`,`gcm`.`tb_gcm`.`GCM_VALIDADE_CNH` AS `GCM_VALIDADE_CNH`,`gcm`.`tb_gcm`.`GCM_DATA_ADMISSAO` AS `GCM_DATA_ADMISSAO`,`gcm`.`tb_gcm`.`GCM_DATA_DEMISSAO` AS `GCM_DATA_DEMISSAO`,`gcm`.`tb_gcm`.`GCM_TIPO_SANGUINEO` AS `GCM_TIPO_SANGUINEO`,`gcm`.`tb_gcm`.`GCM_NATURALIDADE` AS `GCM_NATURALIDADE`,`gcm`.`tb_gcm`.`GCM_NACIONALIDADE` AS `GCM_NACIONALIDADE`,`gcm`.`tb_gcm`.`GCM_FATOR_RH` AS `GCM_FATOR_RH`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_PORTE` AS `GCM_DATA_EXP_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_ID_FUNCIONAL` AS `GCM_DATA_EXP_ID_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_FOTO` AS `GCM_FOTO`,`gcm`.`tb_gcm`.`GCM_CATEG_CNH` AS `GCM_CATEG_CNH`,`gcm`.`tb_gcm`.`GCM_TELEFONE` AS `GCM_TELEFONE`,`gcm`.`tb_gcm`.`GCM_CELULAR` AS `GCM_CELULAR`,`gcm`.`tb_gcm`.`GCM_CONTATO` AS `GCM_CONTATO`,`gcm`.`tb_gcm`.`GCM_CEP` AS `GCM_CEP`,`gcm`.`tb_gcm`.`GCM_OBSERVACAO` AS `GCM_OBSERVACAO`,`gcm`.`tb_gcm`.`GCM_COMPORTAMENTO` AS `GCM_COMPORTAMENTO`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL_PMJ` AS `GCM_RG_FUNCIONAL_PMJ`,`gcm`.`tb_gcm`.`GCM_ELOGIOS` AS `GCM_ELOGIOS`,`gcm`.`tb_gcm`.`GCM_TIPO_LOGRADOURO` AS `GCM_TIPO_LOGRADOURO`,`gcm`.`tb_gcm`.`GCM_UF` AS `GCM_UF`,`gcm`.`tb_gcm`.`GCM_CARTEIRA_TRABALHO` AS `GCM_CARTEIRA_TRABALHO`,`gcm`.`tb_gcm`.`GCM_TITULO_ELEITOR` AS `GCM_TITULO_ELEITOR`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL` AS `GCM_RG_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_STATUS` AS `GCM_STATUS`,`gcm`.`tb_gcm`.`GCM_GUERRA` AS `GCM_GUERRA`,`gcm`.`tb_gcm`.`GCM_EMAIL` AS `GCM_EMAIL` from `gcm`.`tb_gcm`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      gcm_motorista      */
/*------------------------------------------------------------*/

 CREATE VIEW "gcm_motorista"AS(
select `gcm`.`tb_gcm`.`GCM_ID` AS `GCM_ID`,`gcm`.`tb_gcm`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm`.`tb_gcm`.`GCM_RG` AS `GCM_RG`,`gcm`.`tb_gcm`.`GCM_CPF` AS `GCM_CPF`,`gcm`.`tb_gcm`.`GCM_ENDERECO` AS `GCM_ENDERECO`,`gcm`.`tb_gcm`.`GCM_BAIRRO` AS `GCM_BAIRRO`,`gcm`.`tb_gcm`.`GCM_NUMERO` AS `GCM_NUMERO`,`gcm`.`tb_gcm`.`GCM_CIDADE` AS `GCM_CIDADE`,`gcm`.`tb_gcm`.`GCM_PAI` AS `GCM_PAI`,`gcm`.`tb_gcm`.`GCM_MAE` AS `GCM_MAE`,`gcm`.`tb_gcm`.`GCM_FUNCAO` AS `GCM_FUNCAO`,`gcm`.`tb_gcm`.`GCM_NUMERO_PORTE` AS `GCM_NUMERO_PORTE`,`gcm`.`tb_gcm`.`GCM_VALIDADE_PORTE` AS `GCM_VALIDADE_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_NASC` AS `GCM_DATA_NASC`,`gcm`.`tb_gcm`.`GCM_CNH` AS `GCM_CNH`,`gcm`.`tb_gcm`.`GCM_VALIDADE_CNH` AS `GCM_VALIDADE_CNH`,`gcm`.`tb_gcm`.`GCM_DATA_ADMISSAO` AS `GCM_DATA_ADMISSAO`,`gcm`.`tb_gcm`.`GCM_DATA_DEMISSAO` AS `GCM_DATA_DEMISSAO`,`gcm`.`tb_gcm`.`GCM_TIPO_SANGUINEO` AS `GCM_TIPO_SANGUINEO`,`gcm`.`tb_gcm`.`GCM_NATURALIDADE` AS `GCM_NATURALIDADE`,`gcm`.`tb_gcm`.`GCM_NACIONALIDADE` AS `GCM_NACIONALIDADE`,`gcm`.`tb_gcm`.`GCM_FATOR_RH` AS `GCM_FATOR_RH`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_PORTE` AS `GCM_DATA_EXP_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_ID_FUNCIONAL` AS `GCM_DATA_EXP_ID_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_FOTO` AS `GCM_FOTO`,`gcm`.`tb_gcm`.`GCM_CATEG_CNH` AS `GCM_CATEG_CNH`,`gcm`.`tb_gcm`.`GCM_TELEFONE` AS `GCM_TELEFONE`,`gcm`.`tb_gcm`.`GCM_CELULAR` AS `GCM_CELULAR`,`gcm`.`tb_gcm`.`GCM_CONTATO` AS `GCM_CONTATO`,`gcm`.`tb_gcm`.`GCM_CEP` AS `GCM_CEP`,`gcm`.`tb_gcm`.`GCM_OBSERVACAO` AS `GCM_OBSERVACAO`,`gcm`.`tb_gcm`.`GCM_COMPORTAMENTO` AS `GCM_COMPORTAMENTO`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL_PMJ` AS `GCM_RG_FUNCIONAL_PMJ`,`gcm`.`tb_gcm`.`GCM_ELOGIOS` AS `GCM_ELOGIOS`,`gcm`.`tb_gcm`.`GCM_TIPO_LOGRADOURO` AS `GCM_TIPO_LOGRADOURO`,`gcm`.`tb_gcm`.`GCM_UF` AS `GCM_UF`,`gcm`.`tb_gcm`.`GCM_CARTEIRA_TRABALHO` AS `GCM_CARTEIRA_TRABALHO`,`gcm`.`tb_gcm`.`GCM_TITULO_ELEITOR` AS `GCM_TITULO_ELEITOR`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL` AS `GCM_RG_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_STATUS` AS `GCM_STATUS`,`gcm`.`tb_gcm`.`GCM_GUERRA` AS `GCM_GUERRA`,`gcm`.`tb_gcm`.`GCM_EMAIL` AS `GCM_EMAIL` from `gcm`.`tb_gcm`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*    ostensivo    */
/*------------------------------------------------------------*/

 CREATE VIEW "ostensivo"AS(
select `gcm`.`tb_ostensivo_mapa`.`ID_OM` AS `ID_OM`,`gcm`.`tb_ostensivo_mapa`.`OM_ID_MAPA` AS `OM_ID_MAPA`,`gcm`.`tb_plantao`.`HORARIO` AS `PLANTAO`,`gcm`.`tb_viaturas`.`VIA_VIATURA` AS `VIATURA`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `RE_ENCARREGADO`,`gcm_motorista`.`GCM_RE_MATRICULA` AS `RE_MOTORISTA`,`gcm_auxiliar`.`GCM_RE_MATRICULA` AS `RE_AUXILIAR`,`gcm`.`tb_setor`.`SETOR` AS `SETOR` from ((((((`gcm`.`tb_ostensivo_mapa` join `gcm`.`tb_plantao` on((`gcm`.`tb_plantao`.`ID` = `gcm`.`tb_ostensivo_mapa`.`OM_HORARIO`))) join `gcm`.`tb_viaturas` on((`gcm`.`tb_viaturas`.`VIA_ID` = `gcm`.`tb_ostensivo_mapa`.`OM_VIATURA`))) join `gcm`.`tb_gcm` on((`gcm`.`tb_gcm`.`GCM_ID` = `gcm`.`tb_ostensivo_mapa`.`OM_ENCARREGADO`))) join `gcm`.`gcm_motorista` on((`gcm_motorista`.`GCM_ID` = `gcm`.`tb_ostensivo_mapa`.`OM_MOTORISTA`))) join `gcm`.`gcm_auxiliar` on((`gcm_auxiliar`.`GCM_ID` = `gcm`.`tb_ostensivo_mapa`.`OM_AUXILIAR`))) join `gcm`.`tb_setor` on((`gcm`.`tb_setor`.`ID` = `gcm`.`tb_ostensivo_mapa`.`OM_SETOR`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      postos_fixos      */
/*------------------------------------------------------------*/

 CREATE VIEW "postos_fixos"AS(
select `gcm`.`tb_postos_fixos_mapa`.`ID_PF` AS `ID_PF`,`gcm`.`tb_postos_fixos_mapa`.`PF_ID_MAPA` AS `PF_ID_MAPA`,`gcm`.`tb_postos_fixos`.`POSTO` AS `POSTO`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `GCM`,`gcm_motorista`.`GCM_RE_MATRICULA` AS `GCM2`,`gcm_auxiliar`.`GCM_RE_MATRICULA` AS `GCM3`,`gcm`.`tb_plantao`.`HORARIO` AS `PLANTAO` from (((((`gcm`.`tb_postos_fixos_mapa` join `gcm`.`tb_postos_fixos` on((`gcm`.`tb_postos_fixos`.`ID` = `gcm`.`tb_postos_fixos_mapa`.`PF_POSTO`))) join `gcm`.`tb_gcm` on((`gcm`.`tb_gcm`.`GCM_ID` = `gcm`.`tb_postos_fixos_mapa`.`PF_GCM`))) join `gcm`.`gcm_motorista` on((`gcm_motorista`.`GCM_ID` = `gcm`.`tb_postos_fixos_mapa`.`PF_GCM2`))) join `gcm`.`gcm_auxiliar` on((`gcm_auxiliar`.`GCM_ID` = `gcm`.`tb_postos_fixos_mapa`.`PF_GCM3`))) join `gcm`.`tb_plantao` on((`gcm`.`tb_plantao`.`ID` = `gcm`.`tb_postos_fixos_mapa`.`PF_HORARIO`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        novidades_efetivo        */
/*------------------------------------------------------------*/

 CREATE VIEW "novidades_efetivo"AS(
select `gcm`.`tb_novidades_efetivo`.`ID_N` AS `ID_N`,`gcm`.`tb_novidades_efetivo`.`N_ID_MAPA` AS `N_ID_MAPA`,`gcm`.`tb_novidades_efetivo`.`N_FOLGA` AS `N_FOLGA`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA` from (`gcm`.`tb_novidades_efetivo` join `gcm`.`tb_gcm` on((`gcm`.`tb_gcm`.`GCM_ID` = `gcm`.`tb_novidades_efetivo`.`GCM_RE`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*    autuacoes    */
/*------------------------------------------------------------*/

 CREATE VIEW "autuacoes"AS(
select `tb_autuacao`.`ID_AUTUACAO`, `tb_autuacao`.`AUT_NUM_AUTUACAO`, `tb_autuacao`.`AUT_DATA`, `tb_autuacao`.`AUT_TIPO_ESTABELECIMENTO`, `tb_autuacao`.`AUT_NOME_ESTABELECIMENTO`, `tb_autuacao`.`AUT_CNPJ`, `tb_autuacao`.`AUT_CPF`, `tb_autuacao`.`AUT_PROPRIETARIO`, `tb_autuacao`.`AUT_RESPONSAVEL`, `tb_autuacao`.`AUT_TIPO_LOGRADOURO`, `tb_autuacao`.`AUT_LOGRADOURO`, `tb_autuacao`.`AUT_N_LOGRADOURO`, `tb_autuacao`.`AUT_BAIRRO`, `tb_autuacao`.`AUT_CIDADE`, `tb_autuacao`.`AUT_UF`, `tb_autuacao`.`AUT_CEP`, `tb_autuacao`.`AUT_AGENTE_FISCALIZADOR` from `tb_autuacao`
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*     parametros     */
/*------------------------------------------------------------*/

 CREATE VIEW "parametros"AS(
select `tb_config`.`ID`, `tb_config`.`PREFEITURA`, `tb_config`.`TIPO_LOGRADOURO`, `tb_config`.`LOGRADOURO`, `tb_config`.`BAIRRO`, `tb_config`.`CIDADE`, `tb_config`.`UF`, `tb_config`.`CEP`, `tb_config`.`FAX`, `tb_config`.`TELEFONE`, `tb_config`.`CNPJ`, `tb_config`.`FOTO`, `tb_config`.`EMAIL`, `tb_config`.`SITE`, `tb_config`.`GUARDA_MUNICIPAL`, `tb_config`.`GCMP_TIPO_LOGRADOURO`, `tb_config`.`GCMP_LOGRADOURO`, `tb_config`.`GCMP_BAIRRO`, `tb_config`.`GCMP_CIDADE`, `tb_config`.`GCMP_UF`, `tb_config`.`GCMP_CEP`, `tb_config`.`GCMP_TELEFONE`, `tb_config`.`GCMP_FAX`, `tb_config`.`GCMP_CNPJ`, `tb_config`.`GCMP_FOTO`, `tb_config`.`GCMP_EMAIL`, `tb_config`.`GCMP_SITE`, `tb_config`.`CABECALHO`, `tb_config`.`RODAPE`, `tb_config`.`CABECALHO_SECRETARIA`, `tb_config`.`RODAPE_SECRETARIA`, `tb_config`.`CABECALHO_MARIA_PENHA`, `tb_config`.`RODAPE_MARIA_PENHA`, `tb_config`.`PARAM_TEMPO_REFRESH` from `tb_config`
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*         boletim_ocorrencias         */
/*------------------------------------------------------------*/

 CREATE VIEW "boletim_ocorrencias"AS(
select `gcm`.`tb_bol_ocorrencia`.`BOL_OCOR_ID` AS `BOL_OCOR_ID`,`gcm`.`tb_bol_ocorrencia`.`BOL_NUMERO` AS `BOL_NUMERO`,`gcm`.`tb_bol_ocorrencia`.`BOL_NUM_TALAO` AS `BOL_NUM_TALAO`,`gcm`.`tb_viaturas`.`VIA_VIATURA` AS `VIATURA`,`gcm`.`tb_bol_ocorrencia`.`BOL_ATENDENTE` AS `BOL_ATENDENTE`,`gcm`.`tb_bol_ocorrencia`.`BOL_PRIORIDADE` AS `BOL_PRIORIDADE`,`gcm`.`tb_bol_ocorrencia`.`BOL_SOLICITANTE` AS `BOL_SOLICITANTE`,`gcm`.`tb_bol_ocorrencia`.`BOL_TELEFONE` AS `BOL_TELEFONE`,`gcm`.`tb_bol_ocorrencia`.`BOL_TIPO_LOGRADOURO` AS `BOL_TIPO_LOGRADOURO`,`gcm`.`tb_bol_ocorrencia`.`BOL_LOGRADOURO` AS `BOL_LOGRADOURO`,`banco_cep`.`log_bairro`.`bai_no` AS `BAIRRO`,`banco_cep`.`log_localidade`.`loc_no` AS `CIDADE`,`gcm`.`tb_bol_ocorrencia`.`BOL_UF` AS `BOL_UF`,`gcm`.`tb_bol_ocorrencia`.`BOL_CEP` AS `BOL_CEP`,`gcm`.`tb_bol_ocorrencia`.`BOL_REFERENCIA` AS `BOL_REFERENCIA`,`gcm`.`tb_bol_ocorrencia`.`BOL_NATUREZA` AS `NATUREZA_INICIO`,`gcm`.`tb_bol_ocorrencia`.`BOL_NATUREZA_FINAL` AS `NATUREZA_FINAL`,`gcm`.`tb_bol_ocorrencia`.`BOL_DATA` AS `BOL_DATA`,`gcm`.`tb_bol_ocorrencia`.`BOL_DATA_FIM` AS `BOL_DATA_FIM`,`gcm`.`tb_bol_ocorrencia`.`BOL_RESUMO` AS `BOL_RESUMO`,`gcm`.`tb_bol_ocorrencia`.`BOL_HISTORICO` AS `BOL_HISTORICO`,`gcm`.`tb_bol_ocorrencia`.`BOL_HISTORICO_FINAL` AS `BOL_HISTORICO_FINAL`,`gcm`.`tb_bol_ocorrencia`.`BOL_STATUS` AS `BOL_STATUS` from (((`gcm`.`tb_bol_ocorrencia` join `banco_cep`.`log_bairro` on((`banco_cep`.`log_bairro`.`bai_nu_sequencial` = `gcm`.`tb_bol_ocorrencia`.`BOL_BAIRRO`))) join `banco_cep`.`log_localidade` on((`banco_cep`.`log_localidade`.`loc_nu_sequencial` = `gcm`.`tb_bol_ocorrencia`.`BOL_CIDADE`))) join `gcm`.`tb_viaturas` on((`gcm`.`tb_viaturas`.`VIA_ID` = `gcm`.`tb_bol_ocorrencia`.`BOL_VIATURA`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*          registro_ocorrencias          */
/*------------------------------------------------------------*/

 CREATE VIEW "registro_ocorrencias"AS(
select `gcm`.`tb_registro_ocorrencias`.`ID_REG_OCOR` AS `ID_REG_OCOR`,`gcm`.`tb_registro_ocorrencias`.`REG_NUM_TALAO` AS `REG_NUM_TALAO`,`gcm`.`tb_viaturas`.`VIA_VIATURA` AS `VIATURA`,`gcm`.`tb_registro_ocorrencias`.`REG_ATENDENTE` AS `REG_ATENDENTE`,`gcm`.`tb_registro_ocorrencias`.`REG_PRIORIDADE` AS `REG_PRIORIDADE`,`gcm`.`tb_registro_ocorrencias`.`REG_STATUS` AS `REG_STATUS`,`gcm`.`tb_registro_ocorrencias`.`REG_SOLICITANTE` AS `REG_SOLICITANTE`,`gcm`.`tb_registro_ocorrencias`.`REG_TELEFONE` AS `REG_TELEFONE`,`gcm`.`tb_registro_ocorrencias`.`REG_TIPO_LOGRADOURO` AS `REG_TIPO_LOGRADOURO`,`gcm`.`tb_registro_ocorrencias`.`REG_LOGRADOURO` AS `REG_LOGRADOURO`,`banco_cep`.`log_bairro`.`bai_no` AS `BAIRRO`,`banco_cep`.`log_localidade`.`loc_no` AS `CIDADE`,`gcm`.`tb_registro_ocorrencias`.`REG_UF` AS `REG_UF`,`gcm`.`tb_registro_ocorrencias`.`REG_CEP` AS `REG_CEP`,`gcm`.`tb_registro_ocorrencias`.`REG_REFERENCIA` AS `REG_REFERENCIA`,`gcm`.`tb_registro_ocorrencias`.`REG_NATUREZA` AS `REG_NATUREZA`,`gcm`.`tb_registro_ocorrencias`.`REG_NATUREZA_FINAL` AS `REG_NATUREZA_FINAL`,`gcm`.`tb_registro_ocorrencias`.`REG_DATA` AS `REG_DATA`,`gcm`.`tb_registro_ocorrencias`.`REG_DATA_FINAL` AS `REG_DATA_FINAL`,`gcm`.`tb_registro_ocorrencias`.`REG_RESUMO` AS `REG_RESUMO`,`gcm`.`tb_registro_ocorrencias`.`REG_HISTORICO` AS `REG_HISTORICO`,`gcm`.`tb_registro_ocorrencias`.`REG_HISTORICO_FINAL` AS `REG_HISTORICO_FINAL` from (((`gcm`.`tb_registro_ocorrencias` join `banco_cep`.`log_bairro` on((`banco_cep`.`log_bairro`.`bai_nu_sequencial` = `gcm`.`tb_registro_ocorrencias`.`REG_BAIRRO`))) join `banco_cep`.`log_localidade` on((`banco_cep`.`log_localidade`.`loc_nu_sequencial` = `gcm`.`tb_registro_ocorrencias`.`REG_CIDADE`))) join `gcm`.`tb_viaturas` on((`gcm`.`tb_viaturas`.`VIA_ID` = `gcm`.`tb_registro_ocorrencias`.`REG_VIATURA`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*  apoio  */
/*------------------------------------------------------------*/

 CREATE VIEW "apoio"AS(
select `gcm`.`tb_apoio`.`id` AS `id`,`gcm`.`tb_apoio`.`id_bo` AS `id_bo`,`viatura`.`VIA_VIATURA` AS `VIA_VIATURA`,`viatura`.`VIA_PLACA` AS `VIA_PLACA` from (`gcm`.`tb_apoio` join `gcm`.`tb_viaturas` `viatura` on((`viatura`.`VIA_ID` = `gcm`.`tb_apoio`.`viatura`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      b_ocorrencia      */
/*------------------------------------------------------------*/

 CREATE VIEW "b_ocorrencia"AS(
select `gcm`.`tb_bol_ocorrencia`.`BOL_OCOR_ID` AS `BOL_OCOR_ID`,`gcm`.`tb_bol_ocorrencia`.`BOL_NUMERO` AS `BOL_NUMERO`,`gcm`.`tb_bol_ocorrencia`.`BOL_ATENDENTE` AS `BOL_ATENDENTE`,`gcm`.`tb_bol_ocorrencia`.`BOL_PRIORIDADE` AS `BOL_PRIORIDADE`,`gcm`.`tb_bol_ocorrencia`.`BOL_STATUS` AS `BOL_STATUS`,`gcm`.`tb_bol_ocorrencia`.`BOL_SOLICITANTE` AS `BOL_SOLICITANTE`,`gcm`.`tb_bol_ocorrencia`.`BOL_TELEFONE` AS `BOL_TELEFONE`,`gcm`.`tb_bol_ocorrencia`.`BOL_TIPO_LOGRADOURO` AS `BOL_TIPO_LOGRADOURO`,`gcm`.`tb_bol_ocorrencia`.`BOL_LOGRADOURO` AS `BOL_LOGRADOURO`,`gcm`.`tb_bol_ocorrencia`.`BOL_BAIRRO` AS `BOL_BAIRRO`,`gcm`.`tb_bol_ocorrencia`.`BOL_CIDADE` AS `BOL_CIDADE`,`gcm`.`tb_bol_ocorrencia`.`BOL_UF` AS `BOL_UF`,`gcm`.`tb_bol_ocorrencia`.`BOL_CEP` AS `BOL_CEP`,`gcm`.`tb_bol_ocorrencia`.`BOL_REFERENCIA` AS `BOL_REFERENCIA`,`gcm`.`tb_bol_ocorrencia`.`BOL_NATUREZA` AS `BOL_NATUREZA`,`gcm`.`tb_bol_ocorrencia`.`BOL_NATUREZA_FINAL` AS `BOL_NATUREZA_FINAL`,`gcm`.`tb_bol_ocorrencia`.`BOL_RESUMO` AS `BOL_RESUMO`,`gcm`.`tb_bol_ocorrencia`.`BOL_HISTORICO` AS `BOL_HISTORICO`,`gcm`.`tb_bol_ocorrencia`.`BOL_HISTORICO_FINAL` AS `BOL_HISTORICO_FINAL`,`gcm`.`tb_bol_ocorrencia`.`BOL_DATA` AS `BOL_DATA`,`gcm`.`tb_bol_ocorrencia`.`BOL_NUM_TALAO` AS `BOL_NUM_TALAO`,`gcm`.`tb_bol_ocorrencia`.`BOL_DATA_FIM` AS `BOL_DATA_FIM`,`gcm`.`tb_bol_ocorrencia`.`BOL_VIATURA` AS `BOL_VIATURA` from `gcm`.`tb_bol_ocorrencia`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*   gcm_bo   */
/*------------------------------------------------------------*/

 CREATE VIEW "gcm_bo"AS(
select `gcm`.`tb_gcm_bo`.`id` AS `id`,`gcm`.`tb_gcm_bo`.`gcm_bo` AS `gcm_bo`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm`.`tb_gcm`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_gcm`.`GCM_GUERRA` AS `GCM_GUERRA` from (`gcm`.`tb_gcm_bo` join `gcm`.`tb_gcm` on((`gcm`.`tb_gcm`.`GCM_ID` = `gcm`.`tb_gcm_bo`.`gcm_re`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*          gerar_numero_boletim          */
/*------------------------------------------------------------*/

 CREATE VIEW "gerar_numero_boletim"AS(
select concat((count(0) + 1),'/',date_format(now(),'%Y')) AS `boletim_numero` from `gcm`.`tb_bol_ocorrencia` where (date_format(`gcm`.`tb_bol_ocorrencia`.`BOL_DATA`,'%Y') = date_format(now(),'%Y'
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*     apreensoes     */
/*------------------------------------------------------------*/

 CREATE VIEW "apreensoes"AS(
select `tb_apreensoes`.`ID_APREENSOES`, `tb_apreensoes`.`BOL_ID`, `tb_apreensoes`.`APREE_OBJETO`, `tb_apreensoes`.`APREE_QTDE`, `tb_apreensoes`.`APREE_MARCA`, `tb_apreensoes`.`APREE_MODELO`, `tb_apreensoes`.`APREE_DATA`, `tb_apreensoes`.`APREE_RESUMO`, `tb_apreensoes`.`APREE_REF_PLACA_COD`, `tb_apreensoes`.`APREE_CPF_PROPRIETARIO`, `tb_apreensoes`.`APREE_PROPRIETARIO`, `tb_apreensoes`.`APREE_NUM_INFRACAO`, `tb_apreensoes`.`APRRE_NUM_AUTO`, `tb_apreensoes`.`APREE_LEI`, `tb_apreensoes`.`APREE_RECEBEDOR`, `tb_apreensoes`.`APREE_DESTINO`, `tb_apreensoes`.`APREE_NUM_FABRICACAO` from `tb_apreensoes`
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*     envolvidos     */
/*------------------------------------------------------------*/

 CREATE VIEW "envolvidos"AS(
select `tb_envolvidos`.`ID_ENVOLVIDOS`, `tb_envolvidos`.`BOL_ID`, `tb_envolvidos`.`ENV_NOME`, `tb_envolvidos`.`ENV_RG`, `tb_envolvidos`.`ENV_CPF`, `tb_envolvidos`.`ENV_PAI`, `tb_envolvidos`.`ENV_MAE`, `tb_envolvidos`.`ENV_NACIONALIDADE`, `tb_envolvidos`.`ENV_NATURALIDADE`, `tb_envolvidos`.`ENV_SEXO`, `tb_envolvidos`.`ENV_DATA_NASC`, `tb_envolvidos`.`ENV_CUTIS`, `tb_envolvidos`.`ENV_PROFISSAO`, `tb_envolvidos`.`ENV_TIPO_LOGRADOURO`, `tb_envolvidos`.`ENV_LOGRADOURO`, `tb_envolvidos`.`ENV_BAIRRO`, `tb_envolvidos`.`ENV_CIDADE`, `tb_envolvidos`.`ENV_UF`, `tb_envolvidos`.`ENV_CEP`, `tb_envolvidos`.`ENV_TELEFONE`, `tb_envolvidos`.`ENV_CELULAR`, `tb_envolvidos`.`ENV_EMPRESA`, `tb_envolvidos`.`ENV_ENDERECO_EMPRESA`, `tb_envolvidos`.`ENV_TELEFONE_EMPRESA`, `tb_envolvidos`.`ENV_PONTO_REFERENCIA`, `tb_envolvidos`.`ENV_CONDICAO`, `tb_envolvidos`.`ENV_RESUMO` from `tb_envolvidos`
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        medida_protetiva        */
/*------------------------------------------------------------*/

 CREATE VIEW "medida_protetiva"AS(
select `gcm`.`tb_vitima_maria_da_penha`.`NOME` AS `NOME`,`gcm`.`tb_vitima_maria_da_penha`.`N_PROCESSO` AS `N_PROCESSO`,`gcm`.`tb_vitima_visita`.`DATA` AS `DATA`,`gcm`.`tb_vitima_visita`.`PROT` AS `PROT`,`gcm`.`tb_vitima_visita`.`VTR` AS `VTR`,`gcm`.`tb_vitima_visita`.`QTR` AS `QTR`,`gcm`.`tb_vitima_visita`.`RONDA` AS `RONDA`,`gcm`.`tb_vitima_visita`.`DELIGENCIA` AS `DELIGENCIA`,`gcm`.`tb_vitima_visita`.`ENCARREGADO` AS `ENCARREGADO`,`gcm`.`tb_vitima_visita`.`AUXILIAR` AS `AUXILIAR`,`gcm`.`tb_vitima_visita`.`AUXILIAR2` AS `AUXILIAR2`,`gcm`.`tb_vitima_visita`.`MOTORISTA` AS `MOTORISTA`,`gcm`.`tb_vitima_visita`.`OBSERVACOES` AS `OBSERVACOES`,`gcm`.`tb_vitima_visita`.`ID` AS `ID`,`gcm`.`tb_vitima_maria_da_penha`.`NATUREZA_BO` AS `NATUREZA_BO` from (`gcm`.`tb_vitima_maria_da_penha` join `gcm`.`tb_vitima_visita` on((`gcm`.`tb_vitima_visita`.`ID_VITIMA` = `gcm`.`tb_vitima_maria_da_penha`.`ID`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*   vitima   */
/*------------------------------------------------------------*/

 CREATE VIEW "vitima"AS(
select `tb_vitima_maria_da_penha`.`ID` AS `ID`,`tb_vitima_maria_da_penha`.`N_PROCESSO` AS `N_PROCESSO`,`tb_vitima_maria_da_penha`.`RE_MATRICULA` AS `RE_MATRICULA`,`tb_vitima_maria_da_penha`.`DATA_BO` AS `DATA_BO`,`tb_vitima_maria_da_penha`.`NATUREZA_BO` AS `NATUREZA_BO`,`tb_vitima_maria_da_penha`.`OUTRA_BO` AS `OUTRA_BO`,`tb_vitima_maria_da_penha`.`DATA_DO_INDEFERIMENTO` AS `DATA_DO_INDEFERIMENTO`,`tb_vitima_maria_da_penha`.`DATA_CONTATO` AS `DATA_CONTATO`,`tb_vitima_maria_da_penha`.`NOME` AS `NOME`,`tb_vitima_maria_da_penha`.`CIDADE` AS `CIDADE`,`tb_vitima_maria_da_penha`.`CPF` AS `CPF`,`tb_vitima_maria_da_penha`.`RG` AS `RG`,`tb_vitima_maria_da_penha`.`BAIRRO` AS `BAIRRO`,`tb_vitima_maria_da_penha`.`LOGRADOURO` AS `LOGRADOURO`,`tb_vitima_maria_da_penha`.`CELULAR` AS `CELULAR`,`tb_vitima_maria_da_penha`.`TELEFONE` AS `TELEFONE`,`tb_vitima_maria_da_penha`.`AUTOR` AS `AUTOR`,`tb_vitima_maria_da_penha`.`CEP` AS `CEP` from `tb_vitima_maria_da_penha`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*       vitima_visitas       */
/*------------------------------------------------------------*/

 CREATE VIEW "vitima_visitas"AS(
select `tb_vitima_maria_da_penha`.`NOME` AS `ID_VITIMA`,`tb_vitima_visita`.`ID` AS `ID`,date_format(`tb_vitima_visita`.`DATA`,'%d/%m/%Y') AS `DATA`,`tb_vitima_visita`.`PROT` AS `PROT`,`tb_vitima_visita`.`VTR` AS `VTR`,`tb_vitima_visita`.`QTR` AS `QTR`,`tb_vitima_visita`.`RONDA` AS `RONDA`,`tb_vitima_visita`.`DELIGENCIA` AS `DELIGENCIA`,`tb_vitima_visita`.`ENCARREGADO` AS `ENCARREGADO`,`tb_vitima_visita`.`AUXILIAR` AS `AUXILIAR`,`tb_vitima_visita`.`AUXILIAR2` AS `AUXILIAR2`,`tb_vitima_visita`.`MOTORISTA` AS `MOTORISTA`,`tb_vitima_visita`.`OBSERVACOES` AS `OBSERVACOES` from (`tb_vitima_visita` join `tb_vitima_maria_da_penha` on((`tb_vitima_visita`.`ID_VITIMA` = `tb_vitima_maria_da_penha`.`ID`)))
  
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        radio_comunicador        */
/*------------------------------------------------------------*/

 CREATE VIEW "radio_comunicador"AS(
select `gcm`.`tb_mat_belico`.`MATBEL_DESCRICAO` AS `MATBEL_DESCRICAO`,`gcm`.`tb_mat_belico`.`MATBEL_REF` AS `MATBEL_REF`,`gcm`.`tb_mat_belico`.`MATBEL_MODELO` AS `MATBEL_MODELO`,`gcm`.`tb_mat_belico`.`MATBEL_SERIE` AS `MATBEL_SERIE`,`gcm`.`tb_mat_belico`.`MATBEL_LOTE` AS `MATBEL_LOTE`,`gcm`.`tb_mat_belico`.`MATBEL_STATUS` AS `MATBEL_STATUS`,`gcm`.`tb_grupo_mat_belico`.`GRUBEL_DESCRICAO` AS `GRUPO`,`gcm`.`tb_subgrupo_mat_belico`.`BELSUB_DESCRICAO` AS `SUBGRUPO` from ((`gcm`.`tb_mat_belico` join `gcm`.`tb_grupo_mat_belico` on((`gcm`.`tb_grupo_mat_belico`.`GRUBEL_ID` = `gcm`.`tb_mat_belico`.`MATBEL_GRUPO`))) join `gcm`.`tb_subgrupo_mat_belico` on((`gcm`.`tb_subgrupo_mat_belico`.`BELSUB_ID` = `gcm`.`tb_mat_belico`.`MATBEL_SUBGRUPO`))) where (`gcm`.`tb_mat_belico`.`MATBEL_GRUPO` = 5
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      saida_armaria      */
/*------------------------------------------------------------*/

 CREATE VIEW "saida_armaria"AS(
select `gcm`.`tb_saida_armaria`.`ID_SAIDA_ARMARIA` AS `ID_SAIDA_ARMARIA`,`gcm`.`tb_saida_armaria`.`STATUS` AS `STATUS`,`gcm`.`tb_saida_armaria`.`GCM_RE` AS `GCM_RE`,`gcm`.`tb_saida_armaria`.`ARMEIRO` AS `ARMEIRO`,`gcm`.`tb_saida_armaria`.`DATA` AS `DATA`,`gcm`.`tb_saida_armaria`.`ARMA` AS `ARMA`,`gcm`.`tb_saida_armaria`.`ARMA_DEV` AS `ARMA_DEV`,`gcm`.`tb_saida_armaria`.`MUNICAO_QTDE` AS `MUNICAO_QTDE`,`gcm`.`tb_saida_armaria`.`MUNICAO_DEV_QTDE` AS `MUNICAO_DEV_QTDE`,`gcm`.`tb_saida_armaria`.`MUNICAO_DEV` AS `MUNICAO_DEV`,`gcm`.`tb_saida_armaria`.`CARREGADOR` AS `CARREGADOR`,`gcm`.`tb_saida_armaria`.`CARREGADOR_DEV` AS `CARREGADOR_DEV`,`gcm`.`tb_saida_armaria`.`RADIOHT` AS `RADIOHT`,`gcm`.`tb_saida_armaria`.`RADIOHT_DEV` AS `RADIOHT_DEV`,`gcm`.`tb_saida_armaria`.`ALGEMA` AS `ALGEMA`,`gcm`.`tb_saida_armaria`.`ALGEMA_DEV` AS `ALGEMA_DEV`,`gcm`.`tb_saida_armaria`.`COLETE` AS `COLETE`,`gcm`.`tb_saida_armaria`.`COLETE_DEV` AS `COLETE_DEV`,`gcm`.`tb_saida_armaria`.`TONFA` AS `TONFA`,`gcm`.`tb_saida_armaria`.`TONFA_DEV` AS `TONFA_DEV`,`gcm`.`tb_saida_armaria`.`RESUMO` AS `RESUMO`,`gcm_disponivel`.`GCM_NOME` AS `GCM_NOME`,`gcm_disponivel`.`GCM_GUERRA` AS `GCM_GUERRA`,`gcm_disponivel`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm`.`tb_armas`.`ARM_NUM_DO_REGISTRO` AS `ARM_NUM_DO_REGISTRO` from ((`gcm`.`tb_saida_armaria` join `gcm`.`gcm_disponivel` on((`gcm_disponivel`.`GCM_ID` = `gcm`.`tb_saida_armaria`.`GCM_RE`))) join `gcm`.`tb_armas` on((`gcm`.`tb_armas`.`ARM_ID` = `gcm`.`tb_saida_armaria`.`ARMA`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*       arma_espingarda       */
/*------------------------------------------------------------*/

 CREATE VIEW "arma_espingarda"AS(
select `gcm`.`tb_armas`.`ARM_ID` AS `ARM_ID`,`gcm`.`tb_armas`.`ARM_NUM_DO_REGISTRO` AS `ARM_NUM_DO_REGISTRO`,`gcm`.`tb_armas`.`ARM_NUM_SINARM` AS `ARM_NUM_SINARM`,`gcm`.`tb_armas_calibre`.`CAL_DESCRICAO` AS `CAL_DESCRICAO`,`gcm`.`tb_armas_especie`.`ESP_DESCRICAO` AS `ESP_DESCRICAO`,`gcm`.`tb_armas_modelo`.`MOD_DESCRICAO` AS `MOD_DESCRICAO`,`gcm`.`tb_marcas_mat_belico`.`DESCRICAO` AS `DESCRICAO`,`gcm`.`tb_armas`.`ARM_STATUS` AS `ARM_STATUS` from ((((`gcm`.`tb_armas` join `gcm`.`tb_armas_calibre` on((`gcm`.`tb_armas_calibre`.`CAL_ID` = `gcm`.`tb_armas`.`ARM_CALIBRE`))) join `gcm`.`tb_armas_especie` on((`gcm`.`tb_armas_especie`.`ESP_ID` = `gcm`.`tb_armas`.`ARM_ESPECIE`))) join `gcm`.`tb_armas_modelo` on((`gcm`.`tb_armas_modelo`.`MOD_ID` = `gcm`.`tb_armas`.`ARM_MODELO_M`))) join `gcm`.`tb_marcas_mat_belico` on((`gcm`.`tb_marcas_mat_belico`.`ID_MARCA_MB` = `gcm`.`tb_armas`.`ARM_MARCA`))) where (`gcm`.`tb_armas`.`ARM_ESPECIE` = 3
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*       gcm_supervisor       */
/*------------------------------------------------------------*/

 CREATE VIEW "gcm_supervisor"AS(
select `gcm`.`tb_gcm`.`GCM_ID` AS `GCM_ID`,`gcm`.`tb_gcm`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_gcm`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm`.`tb_gcm`.`GCM_RG` AS `GCM_RG`,`gcm`.`tb_gcm`.`GCM_CPF` AS `GCM_CPF`,`gcm`.`tb_gcm`.`GCM_ENDERECO` AS `GCM_ENDERECO`,`gcm`.`tb_gcm`.`GCM_BAIRRO` AS `GCM_BAIRRO`,`gcm`.`tb_gcm`.`GCM_NUMERO` AS `GCM_NUMERO`,`gcm`.`tb_gcm`.`GCM_CIDADE` AS `GCM_CIDADE`,`gcm`.`tb_gcm`.`GCM_PAI` AS `GCM_PAI`,`gcm`.`tb_gcm`.`GCM_MAE` AS `GCM_MAE`,`gcm`.`tb_gcm`.`GCM_FUNCAO` AS `GCM_FUNCAO`,`gcm`.`tb_gcm`.`GCM_NUMERO_PORTE` AS `GCM_NUMERO_PORTE`,`gcm`.`tb_gcm`.`GCM_VALIDADE_PORTE` AS `GCM_VALIDADE_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_NASC` AS `GCM_DATA_NASC`,`gcm`.`tb_gcm`.`GCM_CNH` AS `GCM_CNH`,`gcm`.`tb_gcm`.`GCM_VALIDADE_CNH` AS `GCM_VALIDADE_CNH`,`gcm`.`tb_gcm`.`GCM_DATA_ADMISSAO` AS `GCM_DATA_ADMISSAO`,`gcm`.`tb_gcm`.`GCM_DATA_DEMISSAO` AS `GCM_DATA_DEMISSAO`,`gcm`.`tb_gcm`.`GCM_TIPO_SANGUINEO` AS `GCM_TIPO_SANGUINEO`,`gcm`.`tb_gcm`.`GCM_NATURALIDADE` AS `GCM_NATURALIDADE`,`gcm`.`tb_gcm`.`GCM_NACIONALIDADE` AS `GCM_NACIONALIDADE`,`gcm`.`tb_gcm`.`GCM_FATOR_RH` AS `GCM_FATOR_RH`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_PORTE` AS `GCM_DATA_EXP_PORTE`,`gcm`.`tb_gcm`.`GCM_DATA_EXP_ID_FUNCIONAL` AS `GCM_DATA_EXP_ID_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_FOTO` AS `GCM_FOTO`,`gcm`.`tb_gcm`.`GCM_CATEG_CNH` AS `GCM_CATEG_CNH`,`gcm`.`tb_gcm`.`GCM_TELEFONE` AS `GCM_TELEFONE`,`gcm`.`tb_gcm`.`GCM_CELULAR` AS `GCM_CELULAR`,`gcm`.`tb_gcm`.`GCM_CONTATO` AS `GCM_CONTATO`,`gcm`.`tb_gcm`.`GCM_CEP` AS `GCM_CEP`,`gcm`.`tb_gcm`.`GCM_OBSERVACAO` AS `GCM_OBSERVACAO`,`gcm`.`tb_gcm`.`GCM_COMPORTAMENTO` AS `GCM_COMPORTAMENTO`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL_PMJ` AS `GCM_RG_FUNCIONAL_PMJ`,`gcm`.`tb_gcm`.`GCM_ELOGIOS` AS `GCM_ELOGIOS`,`gcm`.`tb_gcm`.`GCM_TIPO_LOGRADOURO` AS `GCM_TIPO_LOGRADOURO`,`gcm`.`tb_gcm`.`GCM_UF` AS `GCM_UF`,`gcm`.`tb_gcm`.`GCM_CARTEIRA_TRABALHO` AS `GCM_CARTEIRA_TRABALHO`,`gcm`.`tb_gcm`.`GCM_TITULO_ELEITOR` AS `GCM_TITULO_ELEITOR`,`gcm`.`tb_gcm`.`GCM_RG_FUNCIONAL` AS `GCM_RG_FUNCIONAL`,`gcm`.`tb_gcm`.`GCM_STATUS` AS `GCM_STATUS`,`gcm`.`tb_gcm`.`GCM_GUERRA` AS `GCM_GUERRA`,`gcm`.`tb_gcm`.`GCM_EMAIL` AS `GCM_EMAIL` from `gcm`.`tb_gcm` where (`gcm`.`tb_gcm`.`GCM_FUNCAO` = 'SUPERVISOR'
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*       cautela_armaria       */
/*------------------------------------------------------------*/

 CREATE VIEW "cautela_armaria"AS(
select `gcm`.`tb_saida_armaria`.`ID_SAIDA_ARMARIA` AS `ID_SAIDA_ARMARIA`,`gcm`.`tb_saida_armaria`.`SEG_ARMA_DEV` AS `SEG_ARMA_DEV`,`gcm`.`tb_saida_armaria`.`SEG_ARMA` AS `SEG_ARMA`,`gcm`.`tb_saida_armaria`.`RESUMO` AS `RESUMO`,`gcm`.`tb_saida_armaria`.`TONFA_DEV` AS `TONFA_DEV`,`gcm`.`tb_saida_armaria`.`COLETE_DEV` AS `COLETE_DEV`,`gcm`.`tb_saida_armaria`.`TONFA` AS `TONFA`,`gcm`.`tb_saida_armaria`.`COLETE` AS `COLETE`,`gcm`.`tb_saida_armaria`.`ALGEMA_DEV` AS `ALGEMA_DEV`,`gcm`.`tb_saida_armaria`.`ALGEMA` AS `ALGEMA`,`gcm`.`tb_saida_armaria`.`RADIOHT_DEV` AS `RADIOHT_DEV`,`gcm`.`tb_saida_armaria`.`RADIOHT` AS `RADIOHT`,`gcm`.`tb_saida_armaria`.`CARREGADOR_DEV` AS `CARREGADOR_DEV`,`gcm`.`tb_saida_armaria`.`CARREGADOR` AS `CARREGADOR`,`gcm`.`tb_saida_armaria`.`MUNICAO_DEV` AS `MUNICAO_DEV`,`gcm`.`tb_saida_armaria`.`MUNICAO_DEV_QTDE` AS `MUNICAO_DEV_QTDE`,`gcm`.`tb_saida_armaria`.`MUNICAO_QTDE` AS `MUNICAO_QTDE`,`gcm`.`tb_saida_armaria`.`ARMA_DEV` AS `ARMA_DEV`,`gcm`.`tb_saida_armaria`.`DATA` AS `DATA`,`gcm`.`tb_saida_armaria`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_saida_armaria`.`ARMEIRO` AS `ARMEIRO`,`gcm`.`tb_saida_armaria`.`GCM_RE` AS `GCM_RE`,`gcm`.`tb_saida_armaria`.`STATUS` AS `STATUS`,`gcm`.`tb_armas`.`ARM_NUM_DA_ARMA` AS `ARM_NUM_DA_ARMA`,`gcm`.`tb_armas`.`ARM_NUM_DO_REGISTRO` AS `ARM_NUM_DO_REGISTRO`,`gcm`.`tb_armas_especie`.`ESP_DESCRICAO` AS `ESP_DESCRICAO` from ((`gcm`.`tb_saida_armaria` join `gcm`.`tb_armas` on((`gcm`.`tb_armas`.`ARM_ID` = `gcm`.`tb_saida_armaria`.`ARMA`))) join `gcm`.`tb_armas_especie` on((`gcm`.`tb_armas_especie`.`ESP_ID` = `gcm`.`tb_armas`.`ARM_ESPECIE`))) where (`gcm`.`tb_saida_armaria`.`STATUS` = 1
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        passagem_armaria        */
/*------------------------------------------------------------*/

 CREATE VIEW "passagem_armaria"AS(
select `gcm`.`tb_passa_armaria`.`ID_PASS_ARMARIA` AS `ID_PASS_ARMARIA`,`gcm`.`tb_passa_armaria`.`DATA` AS `DATA`,`gcm`.`tb_passa_armaria`.`ARMEIRO` AS `ARMEIRO`,`gcm`.`tb_passa_armaria`.`PISTOLA` AS `PISTOLA`,`gcm`.`tb_passa_armaria`.`REVOLVER` AS `REVOLVER`,`gcm`.`tb_passa_armaria`.`ESPINGARDA` AS `ESPINGARDA`,`gcm`.`tb_passa_armaria`.`CARREGADOR` AS `CARREGADOR`,`gcm`.`tb_passa_armaria`.`MUNICAO` AS `MUNICAO`,`gcm`.`tb_passa_armaria`.`RADIO` AS `RADIO`,`gcm`.`tb_passa_armaria`.`COLETE` AS `COLETE`,`gcm`.`tb_passa_armaria`.`ALGEMA` AS `ALGEMA`,`gcm`.`tb_passa_armaria`.`TONFA` AS `TONFA`,`gcm`.`tb_passa_armaria`.`OBSERVACOES` AS `OBSERVACOES`,`gcm`.`tb_passa_armaria`.`STATUS` AS `STATUS`,`gcm_supervisor`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm_supervisor`.`GCM_GUERRA` AS `GCM_GUERRA`,`gcm_supervisor`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_equipes`.`EQUIPE` AS `EQUIPE`,`gcm`.`tb_plantao`.`HORARIO` AS `HORARIO` from (((`gcm`.`tb_passa_armaria` join `gcm`.`gcm_supervisor` on((`gcm_supervisor`.`GCM_ID` = `gcm`.`tb_passa_armaria`.`SUPERVISOR`))) join `gcm`.`tb_equipes` on((`gcm`.`tb_equipes`.`ID` = `gcm`.`tb_passa_armaria`.`PLANTAO`))) join `gcm`.`tb_plantao` on((`gcm`.`tb_plantao`.`ID` = `gcm`.`tb_passa_armaria`.`HORARIO`))) where (`gcm`.`tb_passa_armaria`.`STATUS` = '1'
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*         cautela_permanente         */
/*------------------------------------------------------------*/

 CREATE VIEW "cautela_permanente"AS(
select `tb_saida_armaria`.`ID_SAIDA_ARMARIA` AS `ID_SAIDA_ARMARIA`,`tb_saida_armaria`.`SEG_ARMA_DEV` AS `SEG_ARMA_DEV`,`tb_saida_armaria`.`SEG_ARMA` AS `SEG_ARMA`,`tb_saida_armaria`.`RESUMO` AS `RESUMO`,`tb_saida_armaria`.`TONFA_DEV` AS `TONFA_DEV`,`tb_saida_armaria`.`COLETE_DEV` AS `COLETE_DEV`,`tb_saida_armaria`.`TONFA` AS `TONFA`,`tb_saida_armaria`.`COLETE` AS `COLETE`,`tb_saida_armaria`.`ALGEMA_DEV` AS `ALGEMA_DEV`,`tb_saida_armaria`.`ALGEMA` AS `ALGEMA`,`tb_saida_armaria`.`RADIOHT_DEV` AS `RADIOHT_DEV`,`tb_saida_armaria`.`RADIOHT` AS `RADIOHT`,`tb_saida_armaria`.`CARREGADOR_DEV` AS `CARREGADOR_DEV`,`tb_saida_armaria`.`CARREGADOR` AS `CARREGADOR`,`tb_saida_armaria`.`MUNICAO_DEV` AS `MUNICAO_DEV`,`tb_saida_armaria`.`MUNICAO_DEV_QTDE` AS `MUNICAO_DEV_QTDE`,`tb_saida_armaria`.`MUNICAO_QTDE` AS `MUNICAO_QTDE`,`tb_saida_armaria`.`ARMA_DEV` AS `ARMA_DEV`,`tb_saida_armaria`.`DATA` AS `DATA`,`tb_saida_armaria`.`GCM_NOME` AS `GCM_NOME`,`tb_saida_armaria`.`ARMEIRO` AS `ARMEIRO`,`tb_saida_armaria`.`GCM_RE` AS `GCM_RE`,`tb_saida_armaria`.`STATUS` AS `STATUS`,`tb_armas`.`ARM_NUM_DA_ARMA` AS `ARM_NUM_DA_ARMA`,`tb_armas`.`ARM_NUM_DO_REGISTRO` AS `ARM_NUM_DO_REGISTRO`,`tb_armas_especie`.`ESP_DESCRICAO` AS `ESP_DESCRICAO` from ((`tb_saida_armaria` join `tb_armas` on((`tb_armas`.`ARM_ID` = `tb_saida_armaria`.`ARMA`))) join `tb_armas_especie` on((`tb_armas_especie`.`ESP_ID` = `tb_armas`.`ARM_ESPECIE`))) where (`tb_saida_armaria`.`STATUS` = 10)
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*      almoxarifado      */
/*------------------------------------------------------------*/

 CREATE VIEW "almoxarifado"AS(
select `gcm`.`tb_almoxarifado`.`ALM_ID` AS `ID`,`gcm`.`tb_almoxarifado`.`ALM_DESCRICAO` AS `DESCRICAO`,`gcm`.`tb_departamento`.`DEP_DESCRICAO` AS `DEPARTAMENTO`,`gcm`.`tb_almoxarifado`.`ALM_MODELO` AS `MODELO`,`gcm`.`tb_almoxarifado`.`ALM_MARCA` AS `MARCA`,`gcm`.`tb_almoxarifado`.`ALM_TIPO` AS `TIPO`,`gcm`.`tb_grupo`.`GRU_DESCRICAO` AS `GRUPO`,`gcm`.`tb_subgrupo`.`SUB_DESCRICAO` AS `SUBGRUPO`,`gcm`.`tb_almoxarifado`.`ALM_N_PATRIMONIO` AS `N_PATRIMONIO`,`gcm`.`tb_almoxarifado`.`ALM_REFERENCIA` AS `REFERENCIA`,`gcm`.`tb_almoxarifado`.`ALM_QTDE` AS `QTDE`,`gcm`.`tb_almoxarifado`.`ALM_VALOR` AS `VALOR`,`gcm`.`tb_almoxarifado`.`ALM_MINIMO` AS `MINIMO`,`gcm`.`tb_almoxarifado`.`ALM_MAXIMO` AS `MAXIMO`,`gcm`.`tb_almoxarifado`.`ALM_FOTO` AS `ALM_FOTO`,`gcm`.`tb_fornecedor`.`FOR_FANTASIA` AS `FORNECEDOR`,`gcm`.`tb_almoxarifado`.`ALM_OBSERVACAO` AS `OBSERVACAO` from ((((`gcm`.`tb_almoxarifado` join `gcm`.`tb_fornecedor` on((`gcm`.`tb_fornecedor`.`FOR_ID` = `gcm`.`tb_almoxarifado`.`ALM_FORNECEDOR`))) join `gcm`.`tb_departamento` on((`gcm`.`tb_departamento`.`DEP_ID` = `gcm`.`tb_almoxarifado`.`ALM_DEPARTAMENTO`))) join `gcm`.`tb_grupo` on((`gcm`.`tb_grupo`.`GRU_ID` = `gcm`.`tb_almoxarifado`.`ALM_GRUPO`))) join `gcm`.`tb_subgrupo` on((`gcm`.`tb_subgrupo`.`SUB_ID` = `gcm`.`tb_almoxarifado`.`ALM_SUBGRUPO`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*   estoque   */
/*------------------------------------------------------------*/

 CREATE VIEW "estoque"AS(
select `gcm`.`tb_estoque`.`ESTOQUE_ID` AS `ID`,`gcm`.`tb_estoque`.`ESTOQUE_DESCRICAO` AS `DESCRIÇÃO`,`gcm`.`tb_estoque`.`ESTOQUE_MODELO` AS `MODELO`,`gcm`.`tb_estoque`.`ESTOQUE_MARCA` AS `MARCA`,`gcm`.`tb_estoque`.`ESTOQUE_TIPO` AS `TIPO`,`gcm`.`tb_grupo`.`GRU_DESCRICAO` AS `GRUPO`,`gcm`.`tb_subgrupo`.`SUB_DESCRICAO` AS `SUBGRUPO`,`gcm`.`tb_fornecedor`.`FOR_FANTASIA` AS `FORNECEDOR`,`gcm`.`tb_estoque`.`ESTOQUE_N_CONTROLE` AS `N_CONTROLE`,`gcm`.`tb_estoque`.`ESTOQUE_N_PATRIMONIO` AS `N_PATRIMONIO`,`gcm`.`tb_estoque`.`ESTOQUE_REFERENCIA` AS `REFERENCIA`,`gcm`.`tb_departamento`.`DEP_DESCRICAO` AS `DEPARTAMENTO`,`gcm`.`tb_estoque`.`ESTOQUE_QTDE` AS `QTDE`,`gcm`.`tb_estoque`.`ESTOQUE_VALOR` AS `VALOR`,`gcm`.`tb_estoque`.`ESTOQUE_MINIMO` AS `MINIMO`,`gcm`.`tb_estoque`.`ESTOQUE_MAXIMO` AS `MAXIMO`,`gcm`.`tb_estoque`.`ESTOQUE_FOTO` AS `FOTO`,`gcm`.`tb_estoque`.`ESTOQUE_OBSERVACAO` AS `OBSERVAÇÕES` from ((((`gcm`.`tb_estoque` join `gcm`.`tb_fornecedor` on((`gcm`.`tb_fornecedor`.`FOR_ID` = `gcm`.`tb_estoque`.`ESTOQUE_FORNECEDOR`))) join `gcm`.`tb_departamento` on((`gcm`.`tb_departamento`.`DEP_ID` = `gcm`.`tb_estoque`.`ESTOQUE_DEPARTAMENTO`))) join `gcm`.`tb_grupo` on((`gcm`.`tb_grupo`.`GRU_ID` = `gcm`.`tb_estoque`.`ESTOQUE_GRUPO`))) join `gcm`.`tb_subgrupo` on((`gcm`.`tb_subgrupo`.`SUB_ID` = `gcm`.`tb_estoque`.`ESTOQUE_SUBGRUPO`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*        armas_na_armaria        */
/*------------------------------------------------------------*/

 CREATE VIEW "armas_na_armaria"AS(
select `gcm`.`tb_armas`.`ARM_ID` AS `ARM_ID`,`gcm`.`tb_armas`.`ARM_NUM_DO_REGISTRO` AS `ARM_NUM_DO_REGISTRO`,`gcm`.`tb_armas`.`ARM_DATA_DE_VENC_REGISTRO` AS `ARM_DATA_DE_VENC_REGISTRO`,`gcm`.`tb_armas`.`ARM_DATA_INDETERMINADO` AS `ARM_DATA_INDETERMINADO`,`gcm`.`tb_armas`.`ARM_RAZAO_SOCIAL` AS `ARM_RAZAO_SOCIAL`,`gcm`.`tb_armas`.`ARM_CNPJ_CPF` AS `ARM_CNPJ_CPF`,`gcm`.`tb_armas`.`ARM_NUM_SINARM` AS `ARM_NUM_SINARM`,`gcm`.`tb_armas`.`ARM_MARCA` AS `ARM_MARCA`,`gcm`.`tb_armas`.`ARM_NUM_DA_ARMA` AS `ARM_NUM_DA_ARMA`,`gcm`.`tb_armas`.`ARM_CAPACIDADE_DE_TIRO` AS `ARM_CAPACIDADE_DE_TIRO`,`gcm`.`tb_armas`.`ARM_FUNCIONAMENTO` AS `ARM_FUNCIONAMENTO`,`gcm`.`tb_armas`.`ARM_ACABAMENTO` AS `ARM_ACABAMENTO`,`gcm`.`tb_armas`.`ARM_QUANTIDADE_CANO` AS `ARM_QUANTIDADE_CANO`,`gcm`.`tb_armas`.`ARM_COMPRIMENTO_CANO` AS `ARM_COMPRIMENTO_CANO`,`gcm`.`tb_armas`.`ARM_TP_DE_ALMA` AS `ARM_TP_DE_ALMA`,`gcm`.`tb_armas`.`ARM_QT_DE_RAIAS` AS `ARM_QT_DE_RAIAS`,`gcm`.`tb_armas`.`ARM_SENTIDO_RAIAS` AS `ARM_SENTIDO_RAIAS`,`gcm`.`tb_armas`.`ARM_PAIS_DE_FABRICACAO` AS `ARM_PAIS_DE_FABRICACAO`,`gcm`.`tb_armas`.`ARM_CPF` AS `ARM_CPF`,`gcm`.`tb_status`.`descricao` AS `STATUS`,`gcm`.`tb_armas_modelo`.`MOD_DESCRICAO` AS `MODELO`,`gcm`.`tb_armas_especie`.`ESP_DESCRICAO` AS `ESPECIE`,`gcm`.`tb_armas_calibre`.`CAL_DESCRICAO` AS `CALIBRE` from ((((`gcm`.`tb_armas` join `gcm`.`tb_armas_calibre` on((`gcm`.`tb_armas_calibre`.`CAL_ID` = `gcm`.`tb_armas`.`ARM_CALIBRE`))) join `gcm`.`tb_armas_especie` on((`gcm`.`tb_armas_especie`.`ESP_ID` = `gcm`.`tb_armas`.`ARM_ESPECIE`))) join `gcm`.`tb_armas_modelo` on((`gcm`.`tb_armas_modelo`.`MOD_ID` = `gcm`.`tb_armas`.`ARM_MODELO_M`))) join `gcm`.`tb_status` on((`gcm`.`tb_status`.`id` = `gcm`.`tb_armas`.`ARM_STATUS`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*           material_belico_estoque           */
/*------------------------------------------------------------*/

 CREATE VIEW "material_belico_estoque"AS(
select `gcm`.`tb_mat_belico`.`MATBEL_ID` AS `MATBEL_ID`,`gcm`.`tb_mat_belico`.`MATBEL_DESCRICAO` AS `MATBEL_DESCRICAO`,`gcm`.`tb_fornecedor`.`FOR_FANTASIA` AS `FORNECEDOR`,`gcm`.`tb_mat_belico`.`MATBEL_MODELO` AS `MATBEL_MODELO`,`gcm`.`tb_grupo_mat_belico`.`GRUBEL_DESCRICAO` AS `GRUPO`,`gcm`.`tb_subgrupo_mat_belico`.`BELSUB_DESCRICAO` AS `SUBGRUPO`,`gcm`.`tb_mat_belico`.`MATBEL_SERIE` AS `MATBEL_SERIE`,`gcm`.`tb_mat_belico`.`MATBEL_LOTE` AS `MATBEL_LOTE`,`gcm`.`tb_mat_belico`.`MATBEL_TAMANHO` AS `MATBEL_TAMANHO`,`gcm`.`tb_mat_belico`.`MATBEL_QTDE` AS `MATBEL_QTDE`,`gcm`.`tb_mat_belico`.`MATBEL_EST_MINIMO` AS `MATBEL_EST_MINIMO`,`gcm`.`tb_mat_belico`.`MATBEL_EST_MAXIMO` AS `MATBEL_EST_MAXIMO`,`gcm`.`tb_mat_belico`.`MATBEL_DATA_VENCIMENTO` AS `MATBEL_DATA_VENCIMENTO`,`gcm`.`tb_mat_belico`.`MATBEL_DATA_FABRICACAO` AS `MATBEL_DATA_FABRICACAO`,`gcm`.`tb_mat_belico`.`MATBEL_VALOR` AS `MATBEL_VALOR`,`gcm`.`tb_mat_belico`.`MATBEL_FOTO` AS `MATBEL_FOTO`,`gcm`.`tb_mat_belico`.`MATBEL_OBSERVACAO` AS `MATBEL_OBSERVACAO`,`gcm`.`tb_mat_belico`.`MATBEL_REF` AS `MATBEL_REF`,`gcm`.`tb_mat_belico`.`MATBEL_STATUS` AS `MATBEL_STATUS` from (((`gcm`.`tb_mat_belico` join `gcm`.`tb_fornecedor` on((`gcm`.`tb_fornecedor`.`FOR_ID` = `gcm`.`tb_mat_belico`.`MATBEL_FORNECEDOR`))) join `gcm`.`tb_grupo_mat_belico` on((`gcm`.`tb_grupo_mat_belico`.`GRUBEL_ID` = `gcm`.`tb_mat_belico`.`MATBEL_GRUPO`))) join `gcm`.`tb_subgrupo_mat_belico` on((`gcm`.`tb_subgrupo_mat_belico`.`BELSUB_ID` = `gcm`.`tb_mat_belico`.`MATBEL_SUBGRUPO`
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*   empresa   */
/*------------------------------------------------------------*/

 CREATE VIEW "empresa"AS(
select `gcm`.`tb_config`.`ID` AS `ID`,`gcm`.`tb_config`.`PREFEITURA` AS `PREFEITURA`,`gcm`.`tb_config`.`TIPO_LOGRADOURO` AS `TIPO_LOGRADOURO`,`gcm`.`tb_config`.`LOGRADOURO` AS `LOGRADOURO`,`gcm`.`tb_config`.`BAIRRO` AS `BAIRRO`,`gcm`.`tb_config`.`CIDADE` AS `CIDADE`,`gcm`.`tb_config`.`UF` AS `UF`,`gcm`.`tb_config`.`CEP` AS `CEP`,`gcm`.`tb_config`.`TELEFONE` AS `TELEFONE`,`gcm`.`tb_config`.`FAX` AS `FAX`,`gcm`.`tb_config`.`CNPJ` AS `CNPJ`,`gcm`.`tb_config`.`FOTO` AS `FOTO`,`gcm`.`tb_config`.`EMAIL` AS `EMAIL`,`gcm`.`tb_config`.`SITE` AS `SITE`,`gcm`.`tb_config`.`GUARDA_MUNICIPAL` AS `GUARDA_MUNICIPAL`,`gcm`.`tb_config`.`GCMP_TIPO_LOGRADOURO` AS `GCMP_TIPO_LOGRADOURO`,`gcm`.`tb_config`.`GCMP_LOGRADOURO` AS `GCMP_LOGRADOURO`,`gcm`.`tb_config`.`GCMP_BAIRRO` AS `GCMP_BAIRRO`,`gcm`.`tb_config`.`GCMP_CIDADE` AS `GCMP_CIDADE`,`gcm`.`tb_config`.`GCMP_UF` AS `GCMP_UF`,`gcm`.`tb_config`.`GCMP_CEP` AS `GCMP_CEP`,`gcm`.`tb_config`.`GCMP_TELEFONE` AS `GCMP_TELEFONE`,`gcm`.`tb_config`.`GCMP_FAX` AS `GCMP_FAX`,`gcm`.`tb_config`.`GCMP_CNPJ` AS `GCMP_CNPJ`,`gcm`.`tb_config`.`GCMP_FOTO` AS `GCMP_FOTO`,`gcm`.`tb_config`.`GCMP_EMAIL` AS `GCMP_EMAIL`,`gcm`.`tb_config`.`GCMP_SITE` AS `GCMP_SITE`,`gcm`.`tb_config`.`CABECALHO` AS `CABECALHO`,`gcm`.`tb_config`.`RODAPE` AS `RODAPE`,`gcm`.`tb_config`.`CABECALHO_SECRETARIA` AS `CABECALHO_SECRETARIA`,`gcm`.`tb_config`.`RODAPE_SECRETARIA` AS `RODAPE_SECRETARIA`,`gcm`.`tb_config`.`CABECALHO_MARIA_PENHA` AS `CABECALHO_MARIA_PENHA`,`gcm`.`tb_config`.`RODAPE_MARIA_PENHA` AS `RODAPE_MARIA_PENHA`,`gcm`.`tb_config`.`PARAM_TEMPO_REFRESH` AS `PARAM_TEMPO_REFRESH` from `gcm`.`tb_config` where (`gcm`.`tb_config`.`ID` = 1
);

/*------------------------------------------------------------*/
/*                      Criação de VIEW                      */
/*           passa_armaria_relatorio           */
/*------------------------------------------------------------*/

 CREATE VIEW "passa_armaria_relatorio"AS(
select `gcm`.`tb_passa_armaria`.`ID_PASS_ARMARIA` AS `ID_PASS_ARMARIA`,`gcm`.`tb_passa_armaria`.`DATA` AS `DATA`,`gcm`.`tb_passa_armaria`.`ARMEIRO` AS `ARMEIRO`,`gcm`.`tb_passa_armaria`.`PISTOLA` AS `PISTOLA`,`gcm`.`tb_passa_armaria`.`REVOLVER` AS `REVOLVER`,`gcm`.`tb_passa_armaria`.`ESPINGARDA` AS `ESPINGARDA`,`gcm`.`tb_passa_armaria`.`CARREGADOR` AS `CARREGADOR`,`gcm`.`tb_passa_armaria`.`MUNICAO` AS `MUNICAO`,`gcm`.`tb_passa_armaria`.`RADIO` AS `RADIO`,`gcm`.`tb_passa_armaria`.`COLETE` AS `COLETE`,`gcm`.`tb_passa_armaria`.`ALGEMA` AS `ALGEMA`,`gcm`.`tb_passa_armaria`.`TONFA` AS `TONFA`,`gcm`.`tb_passa_armaria`.`OBSERVACOES` AS `OBSERVACOES`,`gcm`.`tb_passa_armaria`.`STATUS` AS `STATUS`,`gcm_supervisor`.`GCM_RE_MATRICULA` AS `GCM_RE_MATRICULA`,`gcm_supervisor`.`GCM_GUERRA` AS `GCM_GUERRA`,`gcm_supervisor`.`GCM_NOME` AS `GCM_NOME`,`gcm`.`tb_equipes`.`EQUIPE` AS `EQUIPE`,`gcm`.`tb_plantao`.`HORARIO` AS `HORARIO` from (((`gcm`.`tb_passa_armaria` join `gcm`.`gcm_supervisor` on((`gcm_supervisor`.`GCM_ID` = `gcm`.`tb_passa_armaria`.`SUPERVISOR`))) join `gcm`.`tb_equipes` on((`gcm`.`tb_equipes`.`ID` = `gcm`.`tb_passa_armaria`.`PLANTAO`))) join `gcm`.`tb_plantao` on((`gcm`.`tb_plantao`.`ID` = `gcm`.`tb_passa_armaria`.`HORARIO`
);

ALTER TABLE "file_proc_disc_prel" ADD CONSTRAINT "file_proc_disc_prel_ibfk_1"
	FOREIGN KEY
		("PROC_ID")
	REFERENCES "tb_proc_disc_prel"
		("PROC_ID");

ALTER TABLE "itens_da_manutencao" ADD CONSTRAINT "itens_da_manutencao_ibfk_1"
	FOREIGN KEY
		("ID_MAN_FROTA")
	REFERENCES "tb_manutencao_frota"
		("MANUT_ID");

ALTER TABLE "TB_LOGIN_RULE" ADD CONSTRAINT "TB_LOGIN_GROUP_RULE"
	FOREIGN KEY
		("LOGIN_GROUP_NAME")
	REFERENCES "TB_LOGIN_GROUP"
		("LOGIN_GROUP_NAME")
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE "TB_LOGIN_USER" ADD CONSTRAINT "TB_LOGIN_GROUP_USER"
	FOREIGN KEY
		("LOGIN_GROUP_NAME")
	REFERENCES "TB_LOGIN_GROUP"
		("LOGIN_GROUP_NAME")
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*------------------------------------------------------------*/
/*       Exclusão de procedure para exclusão de objetos       */
/*------------------------------------------------------------*/

DROP PROCEDURE IF EXISTS DROP_TRIGGERS;
DROP PROCEDURE IF EXISTS DROP_FOREIGNKEY;
DROP FUNCTION IF EXISTS HAS_TRIGGER;
