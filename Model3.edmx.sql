
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/01/2024 14:32:31
-- Generated from EDMX file: C:\Users\user\source\repos\BD_BIBLIO\BD_BIBLIO\Model3.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BibliothequeBD];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Bibliothequaires'
CREATE TABLE [dbo].[Bibliothequaires] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [sexe] nvarchar(max)  NOT NULL,
    [age] nvarchar(max)  NOT NULL,
    [tel] nvarchar(max)  NOT NULL,
    [password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Directeurs'
CREATE TABLE [dbo].[Directeurs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [password] nvarchar(max)  NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [sexe] nvarchar(max)  NOT NULL,
    [age] int  NOT NULL,
    [tel] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Livres'
CREATE TABLE [dbo].[Livres] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [photo] varbinary(max)  NOT NULL,
    [auteur] nvarchar(max)  NOT NULL,
    [categorie] nvarchar(max)  NOT NULL,
    [Rayon_Id] int  NOT NULL
);
GO

-- Creating table 'Adherants'
CREATE TABLE [dbo].[Adherants] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [addresse] nvarchar(max)  NOT NULL,
    [anciennete] int  NOT NULL,
    [date_entre] datetime  NOT NULL,
    [nom] nvarchar(max)  NOT NULL,
    [sexe] nvarchar(max)  NOT NULL,
    [age] int  NOT NULL,
    [tel] nvarchar(max)  NOT NULL,
    [password] nvarchar(max)  NOT NULL,
    [Bibliothequaire_Id] int  NOT NULL
);
GO

-- Creating table 'Rayons'
CREATE TABLE [dbo].[Rayons] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [libelee] nvarchar(max)  NOT NULL,
    [capacite] int  NOT NULL
);
GO

-- Creating table 'AdherantLivre'
CREATE TABLE [dbo].[AdherantLivre] (
    [Adherants_Id] int  NOT NULL,
    [Livres_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Bibliothequaires'
ALTER TABLE [dbo].[Bibliothequaires]
ADD CONSTRAINT [PK_Bibliothequaires]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Directeurs'
ALTER TABLE [dbo].[Directeurs]
ADD CONSTRAINT [PK_Directeurs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Livres'
ALTER TABLE [dbo].[Livres]
ADD CONSTRAINT [PK_Livres]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Adherants'
ALTER TABLE [dbo].[Adherants]
ADD CONSTRAINT [PK_Adherants]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Rayons'
ALTER TABLE [dbo].[Rayons]
ADD CONSTRAINT [PK_Rayons]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Adherants_Id], [Livres_Id] in table 'AdherantLivre'
ALTER TABLE [dbo].[AdherantLivre]
ADD CONSTRAINT [PK_AdherantLivre]
    PRIMARY KEY CLUSTERED ([Adherants_Id], [Livres_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Bibliothequaire_Id] in table 'Adherants'
ALTER TABLE [dbo].[Adherants]
ADD CONSTRAINT [FK_BibliothequairesAdherant]
    FOREIGN KEY ([Bibliothequaire_Id])
    REFERENCES [dbo].[Bibliothequaires]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BibliothequairesAdherant'
CREATE INDEX [IX_FK_BibliothequairesAdherant]
ON [dbo].[Adherants]
    ([Bibliothequaire_Id]);
GO

-- Creating foreign key on [Rayon_Id] in table 'Livres'
ALTER TABLE [dbo].[Livres]
ADD CONSTRAINT [FK_RayonLivre]
    FOREIGN KEY ([Rayon_Id])
    REFERENCES [dbo].[Rayons]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RayonLivre'
CREATE INDEX [IX_FK_RayonLivre]
ON [dbo].[Livres]
    ([Rayon_Id]);
GO

-- Creating foreign key on [Adherants_Id] in table 'AdherantLivre'
ALTER TABLE [dbo].[AdherantLivre]
ADD CONSTRAINT [FK_AdherantLivre_Adherant]
    FOREIGN KEY ([Adherants_Id])
    REFERENCES [dbo].[Adherants]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Livres_Id] in table 'AdherantLivre'
ALTER TABLE [dbo].[AdherantLivre]
ADD CONSTRAINT [FK_AdherantLivre_Livre]
    FOREIGN KEY ([Livres_Id])
    REFERENCES [dbo].[Livres]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdherantLivre_Livre'
CREATE INDEX [IX_FK_AdherantLivre_Livre]
ON [dbo].[AdherantLivre]
    ([Livres_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------