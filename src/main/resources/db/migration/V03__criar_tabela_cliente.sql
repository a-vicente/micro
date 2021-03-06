CREATE TABLE cliente (
	codigo BIGINT PRIMARY KEY AUTO_INCREMENT,
	created_by BIGINT NOT NULL,
	updated_by BIGINT,
	creation_date DATE NOT NULL,
	updated_date DATE,
	nome VARCHAR(50) NOT NULL,
	apelido VARCHAR(50) NOT NULL,
	nome_empresa_profissao VARCHAR(80) NOT NULL,
	sexo VARCHAR(50) NOT NULL,
	nic VARCHAR(50) NOT NULL,
    tipo_documento VARCHAR(50) NOT NULL,
    numero_documento VARCHAR(50) NOT NULL,
    estado_civil VARCHAR(50) NOT NULL,
    tipo_pessoa VARCHAR(50) NOT NULL,
    data_nascimento DATE,
    avenida VARCHAR(100) NOT NULL,
	contacto VARCHAR(50) NOT NULL,
	contacto_alternativo VARCHAR(50),
	nuit VARCHAR(9) UNIQUE,
	email VARCHAR(80) UNIQUE,
	codigo_distrito BIGINT(20) NOT NULL,
	codigo_nacionalidade BIGINT(20) NOT NULL,
	FOREIGN KEY (codigo_distrito) REFERENCES distrito(codigo),
	FOREIGN KEY (codigo_nacionalidade) REFERENCES nacionalidade(codigo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
