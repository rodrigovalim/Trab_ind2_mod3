CREATE TABLE Empresas_Parceiras (
    ID SERIAL PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Contato VARCHAR(255),
    Data_Registro DATE
);

CREATE TABLE Tecnologias (
    ID SERIAL PRIMARY KEY,
    Nome VARCHAR(255),
    Area VARCHAR(255)
);

CREATE TABLE Relatorios (
    ID SERIAL PRIMARY KEY,
    Data_Compilacao DATE
);

CREATE TABLE Empresas_Tecnologias (
    ID_Relatorio INT,
    ID_Empresa INT,
    ID_Tecnologia INT,
    PRIMARY KEY (ID_Relatorio, ID_Empresa, ID_Tecnologia),
    FOREIGN KEY (ID_Relatorio) REFERENCES Relatorios(ID),
    FOREIGN KEY (ID_Empresa) REFERENCES Empresas_Parceiras(ID),
    FOREIGN KEY (ID_Tecnologia) REFERENCES Tecnologias(ID)
);