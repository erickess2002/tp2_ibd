CREATE TABLE DESC_PESSOAS (
	id text,
	No_boletim	text,
	data_hora_boletim text,	
	No_envolvido text,
	condutor	text,
	cod_severidade	text,
	desc_severidade	text,
	sexo text,
	cinto_seguranca	text,
	Embreagues text,
	Idade text,
	nascimento text,
	categoria_habilitacao text,
	descricao_habilitacao text,
	declaracao_obito text,
	cod_severidade_antiga text,
	especie_veiculo	text,
	pedestre text,
	passageiro text
);

DROP TABLE DESC_PESSOAS;

COPY DESC_PESSOAS (id, No_boletim, data_hora_boletim, No_envolvido, condutor, cod_severidade, desc_severidade, sexo, 
	cinto_seguranca, Embreagues, Idade, nascimento, categoria_habilitacao, descricao_habilitacao, declaracao_obito,
	cod_severidade_antiga, especie_veiculo, pedestre, passageiro) 
	from 'C:\TP2\Desc_Pessoas.csv'
	DELIMITER ';' CSV HEADER;

CREATE TABLE DESC_GERAL(
	id text,
	NUMERO_BOLETIM text,	
	DATA_HORA_BOLETIM text,
	DATA_INCLUSAO text,
	TIPO_ACIDENTE text,
	DESC_TIPO_ACIDENTE text,
	COD_TEMPO text,
	DESC_TEMPO text,
	COD_PAVIMENTO text,
	PAVIMENTO text,
	COD_REGIONAL text,
	DESC_REGIONAL text,
	ORIGEM_BOLETIM text,
	LOCAL_SINALIZADO text,
	VELOCIDADE_PERMITIDA text,
	COORDENADA_X text,
	COORDENADA_Y text,
	HORA_INFORMADA text,
	INDICADOR_FATALIDADE text,
	VALOR_UPS text,
	DESCRICAO_UPS text,
	DATA_ALTERACAO_SMSA	text,
	VALOR_UPS_ANTIGA text,
	DESCRICAO_UPS_ANTIGA text
);

COPY DESC_GERAL(id, NUMERO_BOLETIM, DATA_HORA_BOLETIM, DATA_INCLUSAO, TIPO_ACIDENTE, DESC_TIPO_ACIDENTE, COD_TEMPO, 
	DESC_TEMPO, COD_PAVIMENTO, PAVIMENTO, COD_REGIONAL, DESC_REGIONAL, ORIGEM_BOLETIM, LOCAL_SINALIZADO, 
	VELOCIDADE_PERMITIDA, COORDENADA_X, COORDENADA_Y, HORA_INFORMADA, INDICADOR_FATALIDADE, VALOR_UPS, DESCRICAO_UPS, 
	DATA_ALTERACAO_SMSA, VALOR_UPS_ANTIGA, DESCRICAO_UPS_ANTIGA) 
	FROM 'C:\TP2\Desc_Geral_Corrigido.csv'
	DELIMITER ',' CSV HEADER;

SELECT * FROM DESC_PESSOAS;
SELECT * FROM DESC_GERAL;