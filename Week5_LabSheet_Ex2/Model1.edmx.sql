
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/19/2020 20:04:56
-- Generated from EDMX file: C:\Users\jmcgr\OneDrive\Documents\GitHub\OOD-LabSheet5_2\Week5_LabSheet_Ex2\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Artist_Album];
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

-- Creating table 'Bands'
CREATE TABLE [dbo].[Bands] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [YearFormed] datetime  NOT NULL,
    [Members] int  NOT NULL
);
GO

-- Creating table 'Albums'
CREATE TABLE [dbo].[Albums] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Released] datetime  NULL,
    [Sales] nvarchar(max)  NOT NULL,
    [BandId] nvarchar(max)  NOT NULL,
    [BandId1] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Bands'
ALTER TABLE [dbo].[Bands]
ADD CONSTRAINT [PK_Bands]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [PK_Albums]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BandId1] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK_BandAlbum]
    FOREIGN KEY ([BandId1])
    REFERENCES [dbo].[Bands]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BandAlbum'
CREATE INDEX [IX_FK_BandAlbum]
ON [dbo].[Albums]
    ([BandId1]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------