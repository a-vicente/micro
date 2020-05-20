INSERT INTO permissao VALUES (1, 'ROLE_ADMINISTRADOR');
INSERT INTO permissao VALUES (2, 'ROLE_APF');
INSERT INTO permissao VALUES (3, 'ROLE_CLIENT_MANAGER');
INSERT INTO permissao VALUES (4, 'ROLE_ACCOUNTANT');

INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 1);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 2);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 3);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 4);

INSERT INTO usuario_grupo (codigo_usuario, codigo_grupo) VALUES (
	(SELECT codigo FROM usuario WHERE email = 'arnaldo.vicente@micro.com'), 1);
	
INSERT INTO usuario_grupo (codigo_usuario, codigo_grupo) VALUES (
	(SELECT codigo FROM usuario WHERE email = 'nelson.homo@micro.com'), 1);