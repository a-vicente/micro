INSERT INTO permissao (codigo, created_by, creation_date, nome) VALUES (1, 0, curdate(), 'ROLE_ADMINISTRADOR');
INSERT INTO permissao (codigo, created_by, creation_date, nome) VALUES (2, 0, curdate(), 'ROLE_APF');
INSERT INTO permissao (codigo, created_by, creation_date, nome) VALUES (3, 0, curdate(), 'ROLE_CLIENT_MANAGER');
INSERT INTO permissao (codigo, created_by, creation_date, nome) VALUES (4, 0, curdate(), 'ROLE_ACCOUNTANT');

INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 1);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 2);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 3);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 4);

INSERT INTO usuario_grupo (codigo_usuario, codigo_grupo) VALUES (
	(SELECT codigo FROM usuario WHERE email = 'arnaldo.vicente@micro.com'), 1);
	
INSERT INTO usuario_grupo (codigo_usuario, codigo_grupo) VALUES (
	(SELECT codigo FROM usuario WHERE email = 'nelson.homo@micro.com'), 1);