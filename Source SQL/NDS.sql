CREATE DATABASE ETL_Assigment_NDS
GO

USE ETL_Assigment_NDS
GO 

DROP DATABASE ETL_Assigment_NDS
GO

DROP TABLE HocSinh_NDS
DROP TABLE LopHoc_NDS
go

CREATE TABLE LopHoc_NDS (
    MaLop_SK INT IDENTITY(1,1) PRIMARY KEY,
    MaLop_NK NVARCHAR(255),
    TenLop NVARCHAR(255),
    siso INT,
    Create_day DATETIME DEFAULT GETDATE(),
    Update_day DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE HocSinh_NDS (
    MaHS_SK INT IDENTITY(1,1) PRIMARY KEY,
    MaHS_NK NVARCHAR(255),
    TenHS NVARCHAR(255),
    NgaySinh DATE,
    GioiTinh NVARCHAR(255),
    MaLop_SK INT,
    Create_day DATETIME DEFAULT GETDATE(),
    Update_day DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_HocSinh_LopHoc FOREIGN KEY (MaLop_SK) REFERENCES LopHoc_NDS(MaLop_SK)
);
GO

UPDATE LopHoc_NDS
SET siso = (
    SELECT COUNT(*)
    FROM HocSinh_NDS
    WHERE HocSinh_NDS.MaLop_SK = LopHoc_NDS.MaLop_SK
);
go

SELECT * FROM LopHoc_NDS;
SELECT * FROM HocSinh_NDS;


