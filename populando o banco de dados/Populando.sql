-- Populando a tabela Empresas_Parceiras
INSERT INTO Empresas_Parceiras (Nome, Endereco, Contato, Data_Registro) VALUES
('Empresa A', 'Rua A, 123', 'contato@empresaa.com', '2020-01-01'),
('Empresa B', 'Rua B, 456', 'contato@empresab.com', '2020-02-01'),
('Empresa C', 'Rua C, 789', 'contato@empresac.com', '2020-03-01'),
('Empresa D', 'Rua D, 1011', 'contato@empresad.com', '2020-04-01');

-- Populando a tabela Tecnologias
INSERT INTO Tecnologias (Nome, Area) VALUES
('React', 'Webdev'),
('Python', 'Dados'),
('Google Analytics', 'Marketing'),
('MySQL', 'Dados'),
('Vue.js', 'Webdev'),
('Java', 'Webdev'),
('Power BI', 'Dados'),
('AWS', 'Infraestrutura');

-- Populando a tabela Relatorios
INSERT INTO Relatorios (Data_Compilacao) VALUES
('2022-01-01'),
('2022-07-01');

-- Populando a tabela Empresas_Tecnologias com as tecnologias utilizadas na primeira pesquisa
INSERT INTO Empresas_Tecnologias (ID_Relatorio, ID_Empresa, ID_Tecnologia) VALUES
(1, 1, 1),
(1, 1, 5),
(1, 2, 2),
(1, 2, 4),
(1, 2, 6),
(1, 3, 3),
(1, 3, 7),
(1, 4, 2),
(1, 4, 4);

-- Populando a tabela Empresas_Tecnologias com as tecnologias utilizadas na segunda pesquisa
INSERT INTO Empresas_Tecnologias (ID_Relatorio, ID_Empresa, ID_Tecnologia) VALUES
(2, 1, 1),
(2, 1, 5),
(2, 1, 6),
(2, 2, 2),
(2, 2, 4),
(2, 2, 5),
(2, 2, 6),
(2, 3, 3),
(2, 3, 7),
(2, 4, 1),
(2, 4, 2),
(2, 4, 4),
(2, 4, 8);