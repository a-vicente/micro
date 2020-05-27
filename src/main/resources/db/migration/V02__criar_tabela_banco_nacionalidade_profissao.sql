CREATE TABLE nacionalidade(
			codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
			created_by BIGINT NOT NULL,
			updated_by BIGINT,
			creation_date DATE NOT NULL,
			updated_date DATE,
			nome VARCHAR(100) NOT NULL UNIQUE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

			
CREATE TABLE profissao(
			codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
			nome VARCHAR(100) UNIQUE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

						
INSERT INTO profissao(nome) VALUES ("Analista de Sistemas");
INSERT INTO profissao(nome) VALUES ("Operador de Máquina");
INSERT INTO profissao(nome) VALUES ("Desenvolvedor de Sistemas");


			
INSERT INTO nacionalidade(created_by, creation_date, nome) VALUES (0, curdate(), "Mocambicano");
INSERT INTO nacionalidade(created_by, creation_date, nome) VALUES (0, curdate(), "Sul Africano");
INSERT INTO nacionalidade(created_by, creation_date, nome) VALUES (0, curdate(), "Nigeriano");

