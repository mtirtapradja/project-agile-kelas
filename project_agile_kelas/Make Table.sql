CREATE TABLE [dbo].[User]
(
    [userId] BIGINT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [userFullName] VARCHAR(MAX) NOT NULL, 
    [userPassword] VARCHAR(MAX) NOT NULL, 
    [userEmail] VARCHAR(MAX) NOT NULL, 
    [userRole] INT NOT NULL, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    [deleted_at] DATE NULL,
    CONSTRAINT [FK_User_Role] FOREIGN KEY ([userRole]) REFERENCES [dbo].[Role] ([roleId])
)

CREATE TABLE [dbo].[Role]
(
    [roleId] INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [roleName] VARCHAR(MAX) NOT NULL
)

CREATE TABLE [dbo].[TransactionHeader]
(
    [transactionId] INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
    [userId] BIGINT NOT NULL, 
    [transactionTypeId] INT NOT NULL, 
    [itemDescription] VARCHAR NOT NULL,
    [price] INT NOT NULL,
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    [deleted_at] DATE NULL, 
    CONSTRAINT [FK_TransactionHeader_TransactionType] FOREIGN KEY ([transactionTypeId]) REFERENCES [dbo].[TransactionType] ([transactionTypeId]),
    CONSTRAINT [FK_TransactionHeader_User] FOREIGN KEY ([userId]) REFERENCES [dbo].[User] ([userId])
)

CREATE TABLE [dbo].[TransactionType]
(
    [transactionTypeId] INT NOT NULL PRIMARY KEY, 
    [transactionTypeName] VARCHAR(MAX) NULL
)
