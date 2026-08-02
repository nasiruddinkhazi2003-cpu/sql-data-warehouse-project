/*
===============================
Create Database & Schemas
================================
WARNING:
      Running this script will drop the entire 'DataWareHouse' database if it exists.
*/
USE master;
GO

-- Drop and recreate the 'DataWareHouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END;
GO

--create the 'DataWareHouse' database
CREATE DATABASE DataWareHouse;
GO

USE DataWareHouse;
GO

--create schemas

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
