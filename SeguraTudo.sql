SELECT 
   	/* selecionando os campos que serão retornados na consulta e dando a aliases a eles para melhor legibilidade */
	c.nome AS nome_cliente,
   	a.numero_apólice,
   	a.tipo_seguro,
   	a.valor_prêmio
	
	/* especificando que é da tabela clientes que os dados serão selecionados, e atribuindo um alias a ela */
FROM 
	clientes c

	/* realizando uma junção entre as tabelas cliente e apolices com base no id do cliente, e atribuindo um alias à tabela apolices */
JOIN 
	apólices a ON c.id_cliente = a.id_cliente

	/* condições para filtrar os resultados: retornar apenas as apolices de seguro que estão marcadas como ativas */
WHERE 
	a.ativa = true;
