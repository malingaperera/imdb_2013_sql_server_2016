USE master ;  
GO  
CREATE DATABASE TPCH  
ON   
( NAME = tcph_dat,  
    FILENAME = '<db location>\tpcdat.mdf',  
    SIZE = 1024MB,  
    MAXSIZE = UNLIMITED,  
    FILEGROWTH = 128MB )  
LOG ON  
( NAME = tcph_log,  
    FILENAME = '<db location>\tpclog.ldf',  
    SIZE = 1024MB,  
    MAXSIZE = 2048GB,  
    FILEGROWTH = 50MB ) ;  
GO 