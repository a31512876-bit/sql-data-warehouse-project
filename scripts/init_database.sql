/*
==========================================================
Create Database and Schemas
==========================================================

Script Purpose:
  This script creates a new database named 'DataWarehouse' after verifying if its already exists.
  If the database exists, it is dropped and recreated. Also, the script sets up three schemas within
  the database: 'bronze', 'silver' and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have taken proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMIDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO


-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
