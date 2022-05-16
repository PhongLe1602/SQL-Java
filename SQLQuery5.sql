/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
FROM SinhVien
WHERE dia_chi = 'Hai Duong' or dia_chi = 'Nam Dinh'
ORDER BY gpa,dia_chi;