USE [ipl_insights];

IF OBJECT_ID('silver.contol_processed_files') IS NOT NULL
	DROP TABLE silver.contol_processed_files;

CREATE TABLE silver.contol_processed_files(
file_name NVARCHAR(100) NOT NULL,
file_path NVARCHAR(1000) NOT NULL,
file_size INT NOT NULL,
processed_at DATETIME2 NOT NULL,
status NVARCHAR(20) NOT NULL,
CONSTRAINT PK_control_processed_files PRIMARY KEY (file_name)
);