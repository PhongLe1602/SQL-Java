CREATE TABLE MonHoc(
	ma_mon_hoc varchar(25),
	ten_mon_hoc varchar(255),
	so_tin_chi int,
	PRIMARY KEY(ma_mon_Hoc)
);

INSERT INTO MonHoc
VALUES('IT111','Lap Trinh C++',4),
('IT112','Cau truc du lieu va giai thuat',4),
('BAS1103','Dai So Tuyen Tinh',3),
('BAS1102','Giai tich 3',2),
('IT114','He dieu hanh',3);

SELECT *FROM MonHoc;
--FOREIGN KEY: Khoa ngoai
--PRIMARY KEY: Khoa chinh

CREATE TABLE Register(
	ma_dang_ki varchar(50),
	ma_sinh_vien varchar(20) NOT NULL,
	ma_mon_hoc varchar(25) NOT NULL,
	PRIMARY KEY (ma_dang_ki),
	FOREIGN KEY(ma_sinh_vien) REFERENCES SinhVien(ma_sinh_vien),
	FOREIGN KEY(ma_mon_hoc) REFERENCES MonHoc(ma_mon_hoc),
);
INSERT INTO Register
VALUES('20','SV003','BAS1102');




