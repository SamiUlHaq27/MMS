CREATE TABLE [dbo].[attendance] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [date]      DATE          NOT NULL,
    [time]      NCHAR (1)     NOT NULL,
    [meal_name] VARCHAR(50)           NOT NULL,
    [user_id]   NVARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



CREATE TABLE [feedback] (
    [Id]      INT        IDENTITY (1, 1) NOT NULL,
    [text]    TEXT       NOT NULL,
    [ratings] FLOAT (53) NOT NULL,
    [user]    INT        NOT NULL,
    [meal]    INT        NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [meal] (
    [Id]    INT           IDENTITY (1, 1) NOT NULL,
    [name]  NVARCHAR (50) NOT NULL,
    [time]  NCHAR (1)     NOT NULL,
    [day]   NCHAR (3)     NOT NULL,
    [price] INT           NOT NULL,
    [is_deleted] NCHAR(1) NOT NULL DEFAULT 'N', 
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [user] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [user_id]  NVARCHAR (20) NOT NULL,
    [name]     NVARCHAR (50) NOT NULL,
    [role]     NVARCHAR (10) NOT NULL,
    [password] NVARCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

