USE aluno;

	SET SQL_SAFE_UPDATES = 0;

	SELECT * FROM TIPO;
	
    INSERT INTO TIPO (codigo, tipo) VALUES (1, 'Banco de Dados');
    INSERT INTO TIPO VALUES (2, 'Programação');
    INSERT INTO TIPO VALUES (3, 'Modelagem de Dados');
    
    
    SELECT * FROM instrutor;
    INSERT INTO instrutor (codigo, instrutor, telefone) VALUES (1, 'André Milani', '1111-1111');
    INSERT INTO instrutor values (2, 'Carlos Tossin', '2222-2222');
    
    
	SELECT * FROM curso;
    INSERT INTO curso (codigo, curso, tipo, instrutor, valor) VALUES (1, 'Java Fundamentos', 2, 2, 270); 
    INSERT INTO curso VALUES (2, 'Java Avançado', 2, 2, 350);
    INSERT INTO curso VALUES (3, 'SQL Completo', 1, 1, 290);
    INSERT INTO curso VALUES (4, 'PHP Básico', 1, 1, 230);
    
    
    SELECT * FROM aluno;
    
    INSERT INTO ALUNO (CODIGO, ALUNO, ENDERECO, EMAIL) VALUES (1, 'Gustavo', 'Antonio de Lima 77', 'gugahenrique2006@hotmail.com');
    INSERT INTO ALUNO (CODIGO, ALUNO, ENDERECO, EMAIL) VALUES (2, 'Felipe', 'Jucelino Dias', 'felipebeckham2004@hotmail.com');
    DELETE FROM ALUNO WHERE CODIGO = 2;
    INSERT INTO ALUNO (CODIGO, ALUNO, ENDERECO, EMAIL) VALUES (3, 'Guilherme', 'Anderson Jemerson 98', 'guizero@hotmail.com');
    INSERT INTO ALUNO (CODIGO, ALUNO, ENDERECO, EMAIL) VALUES (4, 'Matias', 'Arnaldo Pimentel 54', 'matiaspessoa@hotmail.com');
    INSERT INTO ALUNO (CODIGO, ALUNO, ENDERECO, EMAIL) VALUES(5, 'Jorge', 'Assis Ribeiro 4400', 'jorgeluiz@gmail.com');
    
    
	SELECT * FROM pedido;
    
    INSERT INTO pedido (codigo, aluno, datahora) VALUES (1, 2, '2022-04-15 11:23:32');
    INSERT INTO pedido VALUES (2, 1, '2022-04-15 12:23:32');
    INSERT INTO pedido VALUES (3, 4, '2022-04-18 14:23:32');
    INSERT INTO pedido VALUES (4, 3, '2022-04-15 15:23:31');
    INSERT INTO pedido VALUES (5, 5, '2022-04-15 19:23:32');
	
    
    SELECT * FROM pedido_detalhe;
    
    INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (1, 1, 270);
    INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (2, 3, 290);
    INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (3, 2, 350);
    INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (4, 1, 270);
    INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (5, 4, 230);
    
    
    
    
    
    


