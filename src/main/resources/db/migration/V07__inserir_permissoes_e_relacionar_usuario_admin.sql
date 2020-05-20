INSERT INTO permissao VALUES (1, 'ROLE_ADMINISTRADOR');
INSERT INTO permissao VALUES (2, 'ROLE_APF');
INSERT INTO permissao VALUES (3, 'ROLE_CALL_CENTER');
INSERT INTO permissao VALUES (4, 'ROLE_MARKETING');

INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 1);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 2);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 3);
INSERT INTO grupo_permissao (codigo_grupo, codigo_permissao) VALUES (1, 4);

INSERT INTO usuario_grupo (codigo_usuario, codigo_grupo) VALUES (
	(SELECT codigo FROM usuario WHERE email = 'arnaldo.vicente@efinderi.com'), 1);