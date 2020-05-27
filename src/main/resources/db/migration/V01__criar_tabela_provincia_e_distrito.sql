CREATE TABLE provincia(
				codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
				created_by BIGINT NOT NULL,
				updated_by BIGINT,
				creation_date DATE NOT NULL,
				updated_date DATE,
				nome VARCHAR(100) NOT NULL,
				sigla VARCHAR(10) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE distrito(
			 codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
			 created_by BIGINT NOT NULL,
			 updated_by BIGINT,
			 creation_date DATE NOT NULL,
			 updated_date DATE,
			 nome VARCHAR(100) NOT NULL,
			 codigo_provincia BIGINT(20),
			 FOREIGN KEY (codigo_provincia) REFERENCES provincia(codigo)
);

INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(1, 0, curdate(), "Cabo Delgado", "CBD");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Ancuabe", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Balama", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chiúre", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Ibo", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Macomia", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mecúfi", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Meluco", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Metuge", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mocímboa da Praia", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Montepuez", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mueda", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Muidumbe", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Namuno", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Nangade", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Palma", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Pemba", 1);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Quissanga", 1);
		
		
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(2, 0, curdate(), "Gaza", "GZA");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Bilene", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chibuto", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chicualacuala", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chigubo", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chókwè", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chongoene", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Guijá", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Limpopo", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mabalane", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Manjacaze", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mapai", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Massangena", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Massingir", 2);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Xai-Xai", 2);
		
		
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(3, 0, curdate(), "Inhambane", "INH");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Funhalouro", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Govuro", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Homoíne", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Inhambane", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Inharrime", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Inhassoro", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Jangamo", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mabote", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Massinga", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Maxixe", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Morrumbene", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Panda", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Vilanculos ", 3);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Zavala", 3);
		
		
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(4, 0, curdate(), "Manica", "MNC");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Bárue", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chimoio", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Gondola", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Guro", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Macate", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Machaze", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Macossa", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Manica", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mossurize", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Sussundenga", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Tambara", 4);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Vanduzi", 4);
		
		
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(5, 0, curdate(), "Maputo", "MPT");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Boane", 5);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Magude", 5);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Manhiça", 5);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Marracuene", 5);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Matola", 5);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Matutuíne", 5);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Moamba", 5);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Namaacha", 5);
		
		
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(6, 0, curdate(), "Nampula", "NPL");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Angoche", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Eráti", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Ilha de Moçambique", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Lalaua", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Larde", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Liúpo", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Malema", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Meconta", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mecubúri", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Memba", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mogincual", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mogovolas", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Moma", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Monapo", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mossuril", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Muecate", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Murrupula", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Nacala-a-Velha", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Nacala Porto", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Nacarôa", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Nampula", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Rapale", 6);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Ribaué", 6);
		
		
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(7, 0, curdate(), "Niassa", "NAS");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chimbonila", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Cuamba", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Lago", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Lichinga", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Majune", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mandimba", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Marrupa", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Maúa", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mavago", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mecanhelas", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mecula", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Metarica", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Muembe", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "N'gauma", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Nipepe", 7);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Sanga", 7);
		
		
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(8, 0, curdate(), "Sofala", "SFL");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Beira", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(),"Búzi", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Caia", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chemba", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Cheringoma", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chibabava", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Dondo", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Gorongosa", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Machanga", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Maringué", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Marromeu", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(),"Muanza", 8);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(),"Nhamatanda", 8);
		
		
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(9, 0, curdate(), "Tete", "TET");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Angónia", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Cahora-Bassa", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Changara", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chifunde", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chiuta", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Dôa", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Macanga", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Magoé", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Marara", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Marávia", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Moatize", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mutarara", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Tete", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Tsangano", 9);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Zumbo", 9);
		

INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(10, 0, curdate(), "Zambezia", "ZBZ");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Alto Molocué", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Chinde", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Derre", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Gilé", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Gurué", 10);
		INSERT INTO distrito(created_by, creation_date,nome, codigo_provincia) VALUES (0, curdate(), "Ile", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Inhassunge", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Luabo", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Lugela", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Maganja da Costa", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Milange", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mocuba", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mocubela", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Molumbo", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mopeia", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Morrumbala", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Mulevala", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Namacurra", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Namarroi", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Nicoadala", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Pebane", 10);
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Quelimane", 10);
		
				
INSERT INTO provincia(codigo, created_by, creation_date, nome, sigla) VALUES(11, 0, curdate(), "Maputo Provincia", "MPR");
		INSERT INTO distrito(created_by, creation_date, nome, codigo_provincia) VALUES (0, curdate(), "Não contém distritos do mesmo nível das outras Províncias", 11);

