-- 1 Qual empresa utiliza o maior número de tecnologias na última pesquisa (Segundo semestre)?

SELECT ep.Nome, COUNT(et.ID_Tecnologia) AS Quantidade_Tecnologias
FROM Empresas_Tecnologias AS et
JOIN Empresas_Parceiras AS ep ON ep.ID = et.ID_Empresa
JOIN Relatorios AS r ON r.ID = et.ID_Relatorio
WHERE r.Data_Compilacao = '2022-07-01'
GROUP BY ep.ID
ORDER BY Quantidade_Tecnologias DESC
LIMIT 1;
--2 Qual empresa utilizava o menor número de tecnologias na pesquisa anterior (primeiro semestre)?
SELECT ep.Nome, COUNT(et.ID_Tecnologia) AS Quantidade_Tecnologias
FROM Empresas_Tecnologias AS et
JOIN Empresas_Parceiras AS ep ON ep.ID = et.ID_Empresa
JOIN Relatorios AS r ON r.ID = et.ID_Relatorio
WHERE r.Data_Compilacao = '2022-01-01'
GROUP BY ep.ID
ORDER BY Quantidade_Tecnologias ASC
LIMIT 1;

-- 3 Quantas empresas utilizam tecnologias da área de “Dados” atualmente?

SELECT COUNT(DISTINCT et.ID_Empresa)
FROM Empresas_Tecnologias AS et
JOIN Tecnologias AS t ON t.ID = et.ID_Tecnologia
WHERE t.Area = 'Dados';

-- 4 Quantas empresas utilizam tecnologias que não são da área de “Dados” atualmente?

SELECT COUNT(DISTINCT et.ID_Empresa)
FROM Empresas_Tecnologias AS et
JOIN Tecnologias AS t ON t.ID = et.ID_Tecnologia
WHERE t.Area != 'Dados';