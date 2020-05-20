/*CREATE TABLE banco(
			codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
			banco VARCHAR(100) NOT NULL,
			numero_conta Integer NOT NULL UNIQUE,
			nib Integer NOT NULL UNIQUE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;*/

CREATE TABLE nacionalidade(
			codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
			nome VARCHAR(100) NOT NULL UNIQUE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

			
CREATE TABLE profissao(
			codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
			nome VARCHAR(100) UNIQUE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

						
INSERT INTO profissao(nome) VALUES ("Analista de Sistemas");
INSERT INTO profissao(nome) VALUES ("Operador de Máquina");
INSERT INTO profissao(nome) VALUES ("Desenvolvedor de Sistemas");


			
INSERT INTO nacionalidade(nome) VALUES ('Mocambicano');
INSERT INTO nacionalidade(nome) VALUES ('Sul Africano');
INSERT INTO nacionalidade(nome) VALUES ('Nigeriano');

