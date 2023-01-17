USE aluno;

SELECT curso.curso, tipo.tipo FROM curso INNER JOIN tipo ON curso.tipo = tipo.codigo;
SELECT curso.curso, tipo.tipo, instrutor.instrutor, instrutor.telefone FROM curso INNER JOIN tipo ON curso.tipo = tipo.codigo INNER JOIN instrutor ON curso.instrutor = instrutor.codigo;
SELECT codigo, datahora, curso FROM pedido INNER JOIN pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido;
SELECT pedido.codigo, datahora, curso.curso FROM pedido INNER JOIN pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido INNER JOIN curso ON pedido_detalhe.curso = curso.codigo;
SELECT pedido.codigo, datahora, aluno.aluno, curso.curso FROM pedido INNER JOIN pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido 
INNER JOIN curso ON pedido_detalhe.curso = curso.codigo 
INNER JOIN aluno ON pedido.aluno = aluno.codigo;

CREATE VIEW CURSOS_PROGRAMACAO AS SELECT CURSO, VALOR FROM CURSO INNER JOIN TIPO ON CURSO.TIPO = TIPO.CODIGO WHERE TIPO.TIPO = 'Programação';
CREATE VIEW CURSOS_PROGRAMACAO_COMPLETO AS SELECT CURSO, TIPO.TIPO, INSTRUTOR.INSTRUTOR FROM CURSO INNER JOIN TIPO ON CURSO.TIPO = TIPO.CODIGO INNER JOIN INSTRUTOR ON CURSO.INSTRUTOR = INSTRUTOR.CODIGO;
CREATE VIEW PEDIDOS_REALIZADOS AS SELECT PEDIDO.CODIGO, PEDIDO.DATAHORA, ALUNO.ALUNO FROM PEDIDO INNER JOIN ALUNO ON PEDIDO.ALUNO = ALUNO.CODIGO;

