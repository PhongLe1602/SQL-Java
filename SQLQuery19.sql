/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ma_dang_ki]
      ,[ma_sinh_vien]
      ,[ma_mon_hoc]
  FROM [SQL_Basic].[dbo].[Register]
-- Truy van các sinh viên đăng kí môn học có mã là IT111
SELECT*
FROM SinhVien AS s,Register AS r
WHERE s.ma_sinh_vien = r.ma_sinh_vien AND r.ma_mon_hoc = 'IT111';