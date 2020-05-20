CREATE TABLE provincia(
				codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
				nome VARCHAR(100) NOT NULL,
				sigla VARCHAR(10) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE distrito(
			 codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
			 nome VARCHAR(100) NOT NULL,
			 codigo_provincia BIGINT(20),
			 FOREIGN KEY (codigo_provincia) REFERENCES provincia(codigo)
);

INSERT INTO provincia(codigo, nome, sigla) VALUES(1, "Cabo Delgado", "CBD");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Ancuabe", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Balama", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chiúre", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Ibo", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Macomia", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mecúfi", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Meluco", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Metuge", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mocímboa da Praia", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Montepuez", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mueda", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Muidumbe", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Namuno", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Nangade", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Palma", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Pemba", 1);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Quissanga", 1);
		
		
INSERT INTO provincia(codigo, nome, sigla) VALUES(2, "Gaza", "GZA");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Bilene", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chibuto", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chicualacuala", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chigubo", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chókwè", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chongoene", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Guijá", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Limpopo", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mabalane", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Manjacaze", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mapai", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Massangena", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Massingir", 2);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Xai-Xai", 2);
		
		
INSERT INTO provincia(codigo, nome, sigla) VALUES(3, "Inhambane", "INH");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Funhalouro", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Govuro", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Homoíne", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Inhambane", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Inharrime", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Inhassoro", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Jangamo", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mabote", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Massinga", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Maxixe", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Morrumbene", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Panda", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Vilanculos ", 3);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Zavala", 3);
		
		
INSERT INTO provincia(codigo, nome, sigla) VALUES(4, "Manica", "MNC");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Bárue", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chimoio", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Gondola", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Guro", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Macate", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Machaze", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Macossa", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Manica", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mossurize", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Sussundenga", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Tambara", 4);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Vanduzi", 4);
		
		
INSERT INTO provincia(codigo, nome, sigla) VALUES(5, "Maputo", "MPT");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Boane", 5);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Magude", 5);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Manhiça", 5);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Marracuene", 5);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Matola", 5);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Matutuíne", 5);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Moamba", 5);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Namaacha", 5);
		
		
INSERT INTO provincia(codigo, nome, sigla) VALUES(6, "Nampula", "NPL");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Angoche", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Eráti", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Ilha de Moçambique", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Lalaua", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Larde", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Liúpo", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Malema", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Meconta", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mecubúri", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Memba", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mogincual", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mogovolas", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Moma", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Monapo", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mossuril", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Muecate", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Murrupula", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Nacala-a-Velha", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Nacala Porto", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Nacarôa", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Nampula", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Rapale", 6);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Ribaué", 6);
		
		
INSERT INTO provincia(codigo, nome, sigla) VALUES(7, "Niassa", "NAS");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chimbonila", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Cuamba", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Lago", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Lichinga", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Majune", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mandimba", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Marrupa", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Maúa", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mavago", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mecanhelas", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mecula", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Metarica", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Muembe", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("N'gauma", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Nipepe", 7);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Sanga", 7);
		
		
INSERT INTO provincia(codigo, nome, sigla) VALUES(8, "Sofala", "SFL");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Beira", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Búzi", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Caia", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chemba", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Cheringoma", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chibabava", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Dondo", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Gorongosa", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Machanga", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Maringué", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Marromeu", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Muanza", 8);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Nhamatanda", 8);
		
		
INSERT INTO provincia(codigo, nome, sigla) VALUES(9, "Tete", "TET");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Angónia", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Cahora-Bassa", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Changara", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chifunde", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chiuta", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Dôa", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Macanga", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Magoé", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Marara", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Marávia", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Moatize", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mutarara", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Tete", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Tsangano", 9);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Zumbo", 9);
		

INSERT INTO provincia(codigo, nome, sigla) VALUES(10, "Zambezia", "ZBZ");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Alto Molocué", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Chinde", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Derre", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Gilé", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Gurué", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Ile", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Inhassunge", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Luabo", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Lugela", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Maganja da Costa", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Milange", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mocuba", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mocubela", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Molumbo", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mopeia", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Morrumbala", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Mulevala", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Namacurra", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Namarroi", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Nicoadala", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Pebane", 10);
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Quelimane", 10);
		
				
INSERT INTO provincia(codigo, nome, sigla) VALUES(11, "Maputo Provincia", "MPR");
		INSERT INTO distrito(nome, codigo_provincia) VALUES ("Não contém distritos do mesmo nível das outras Províncias", 11);

