/*SELECT*
FROM table1
INNER JOIN table2
ON table1.col = table2.col;
*/
SELECT*
FROM (SinhVien
INNER JOIN Register
ON SinhVien.ma_sinh_vien = Register.ma_sinh_vien)
INNER JOIN MonHoc ON Register.ma_mon_hoc = MonHoc.ma_mon_hoc
WHERE SinhVien.ma_sinh_vien = 'SV001';


SELECT*
FROM SinhVien, Register
WHERE SinhVien.ma_sinh_vien = Register.ma_sinh_vien;

-- câu hỏi 1
SELECT ho_ten,gpa,MonHoc.ma_mon_hoc,MonHoc.ten_mon_hoc,so_tin_chi,SinhVien.ma_sinh_vien
FROM (SinhVien
INNER JOIN Register
ON SinhVien.ma_sinh_vien = Register.ma_sinh_vien)
INNER JOIN MonHoc ON Register.ma_mon_hoc = MonHoc.ma_mon_hoc
WHERE SinhVien.ho_ten LIKE  '%[am]';


SELECT*
FROM (SinhVien
FULL JOIN Register
ON SinhVien.ma_sinh_vien = Register.ma_sinh_vien)

-- Ageeregate : MIN MAX AVG SUM COUNT
SELECT MAX(gpa)
FROM SinhVien
WHERE lop = 'CNTT1'
GROUP BY lop