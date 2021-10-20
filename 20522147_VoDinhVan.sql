CREATE DATABASE Thao

USE Thao

CREATE TABLE KHACHHANG(
 MAKH char(4) primary key, 
 HOTEN varchar(40),
 DCHI varchar(50),
 SODT varchar(20),
 NGSINH smalldatetime,
 NGDK smalldatetime,
 DOANHSO money,
)

insert into khachhang values('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','8823451',1960-10-22,2006-07-22,13060000)
insert into khachhang values('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','908256478',1974-04-03,2006-07-30,280000)
insert into khachhang values('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','938776266',1980-06-12,2006-05-08,3860000)
insert into khachhang values('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','917325476',1965-03-09,2006-02-10,250000)
insert into khachhang values('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','8246108',1950-03-10, 2006-10-28,21000)
insert into khachhang values('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','8631738',1981-12-31,2006-11-24,915000)
insert into khachhang values('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','916783565',1971-04-06,2006-01-12,12500)
insert into khachhang values('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','938435756',1971-01-10,2006-12-13,365000)
insert into khachhang values('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','8654763',1979-09-03,2007-01-14,70000)
insert into khachhang values('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','8768904',1983-05-02,2007-01-16,67500)
 select * from KHACHHANG

-- NHANVIEN
CREATE TABLE NHANVIEN(
 MANV char(4) primary key, 
 HOTEN varchar(40),
 SODT varchar(20),
 NGVL smalldatetime 
)

insert into nhanvien values('NV01','Nguyen Nhu Nhut','927345678',2006-04-13)
insert into nhanvien values('NV02','Le Thi Phi Yen','987567390',2006-04-21)
insert into nhanvien values('NV03','Nguyen Van B','997047382',2006-04-27)
insert into nhanvien values('NV04','Ngo Thanh Tuan','913758498',2006-06-24)
insert into nhanvien values('NV05','Nguyen Thi Truc Thanh','918590387',2006-07-20)


-- SANPHAM
CREATE TABLE SANPHAM(
 MASP char(4) primary key,
 TENSP varchar(40),
 DVT varchar(20) ,
 NUOCSX varchar(40),
 GIA money
)

insert into sanpham values('BC01','But chi','cay','Singapore',3000)
insert into sanpham values('BC02','But chi','cay','Singapore',5000)
insert into sanpham values('BC03','But chi','cay','Viet Nam',3500)
insert into sanpham values('BC04','But chi','hop','Viet Nam',30000)
insert into sanpham values('BB01','But bi','cay','Viet Nam',5000)
insert into sanpham values('BB02','But bi','cay','Trung Quoc',7000)
insert into sanpham values('BB03','But bi','hop','Thai Lan',100000)
insert into sanpham values('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
insert into sanpham values('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
insert into sanpham values('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
insert into sanpham values('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
insert into sanpham values('TV05','Tap 100 trang','chuc','Viet Nam',23000)
insert into sanpham values('TV06','Tap 200 trang','chuc','Viet Nam',53000)
insert into sanpham values('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
insert into sanpham values('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
insert into sanpham values('ST02','So tay loai 1','quyen','Viet Nam',55000)
insert into sanpham values('ST03','So tay loai 2','quyen','Viet Nam',51000)
insert into sanpham values('ST04','So tay','quyen','Thai Lan',55000)
insert into sanpham values('ST05','So tay mong','quyen','Thai Lan',20000)
insert into sanpham values('ST06','Phan viet bang','hop','Viet Nam',5000)
insert into sanpham values('ST07','Phan khong bui','hop','Viet Nam',7000)
insert into sanpham values('ST08','Bong bang','cai','Viet Nam',1000)
insert into sanpham values('ST09','But long','cay','Viet Nam',5000)
insert into sanpham values('ST10','But long','cay','Trung Quoc',7000)

-- HOADON
CREATE TABLE HOADON(
 SOHD int primary key,
 NGHD smalldatetime,
 MAKH char(4),
 MANV char(4),
 TRIGIA money,

)

insert into hoadon values(1001,2006-07-23,'KH01','NV01',320000)
insert into hoadon values(1002,2006-08-12,'KH01','NV02',840000)
insert into hoadon values(1003,2006-08-23,'KH02','NV01',100000)
insert into hoadon values(1004,2006-09-01,'KH02','NV01',180000)
insert into hoadon values(1005,2006-10-20,'KH01','NV02',3800000)
insert into hoadon values(1006,2006-10-16,'KH01','NV03',2430000)
insert into hoadon values(1007,2006-10-28,'KH03','NV03',510000)
insert into hoadon values(1008,2006-10-28,'KH01','NV03',440000)
insert into hoadon values(1009,2006-10-28,'KH03','NV04',200000)
insert into hoadon values(1010,2006-11-01,'KH01','NV01',5200000)
insert into hoadon values(1011,2006-11-04,'KH04','NV03',250000)
insert into hoadon values(1012,2006-11-30,'KH05','NV03',21000)
insert into hoadon values(1013,2006-12-12,'KH06','NV01',5000)
insert into hoadon values(1014,2006-12-31,'KH03','NV02',3150000)
insert into hoadon values(1015,2007-01-01,'KH06','NV01',910000)
insert into hoadon values(1016,2007-01-01,'KH07','NV02',12500)
insert into hoadon values(1017,2007-01-02,'KH08','NV03',35000)
insert into hoadon values(1018,2007-01-13,'KH08','NV03',330000)
insert into hoadon values(1019,2007-01-13,'KH01','NV03',30000)
insert into hoadon values(1020,2007-01-14,'KH09','NV04',70000)
insert into hoadon values(1021,2007-01-16,'KH10','NV03',67500)
insert into hoadon values(1022,2007-01-16,Null,'NV03',7000)
insert into hoadon values(1023,2007-01-17,Null,'NV01',330000)


-- CTHD
CREATE TABLE CTHD(
 SOHD int,
 MASP char(4),
 SL int,
 constraint pk_cthd primary key(SOHD,MASP)
)
 

insert into cthd values(1001,'TV02',10)
insert into cthd values(1001,'ST01',5)
insert into cthd values(1001,'BC01',5)
insert into cthd values(1001,'BC02',10)
insert into cthd values(1001,'ST08',10)
insert into cthd values(1002,'BC04',20)
insert into cthd values(1002,'BB01',20)
insert into cthd values(1002,'BB02',20)
insert into cthd values(1003,'BB03',10)
insert into cthd values(1004,'TV01',20)
insert into cthd values(1004,'TV02',10)
insert into cthd values(1004,'TV03',10)
insert into cthd values(1004,'TV04',10)
insert into cthd values(1005,'TV05',50)
insert into cthd values(1005,'TV06',50)
insert into cthd values(1006,'TV07',20)
insert into cthd values(1006,'ST01',30)
insert into cthd values(1006,'ST02',10)
insert into cthd values(1007,'ST03',10)
insert into cthd values(1008,'ST04',8)
insert into cthd values(1009,'ST05',10)
insert into cthd values(1010,'TV07',50)
insert into cthd values(1010,'ST07',50)
insert into cthd values(1010,'ST08',100)
insert into cthd values(1010,'ST04',50)
insert into cthd values(1010,'TV03',100)
insert into cthd values(1011,'ST06',50)
insert into cthd values(1012,'ST07',3)
insert into cthd values(1013,'ST08',5)
insert into cthd values(1014,'BC02',80)
insert into cthd values(1014,'BB02',100)
insert into cthd values(1014,'BC04',60)
insert into cthd values(1014,'BB01',50)
insert into cthd values(1015,'BB02',30)
insert into cthd values(1015,'BB03',7)
insert into cthd values(1016,'TV01',5)
insert into cthd values(1017,'TV02',1)
insert into cthd values(1017,'TV03',1)
insert into cthd values(1017,'TV04',5)
insert into cthd values(1018,'ST04',6)
insert into cthd values(1019,'ST05',1)
insert into cthd values(1019,'ST06',2)
insert into cthd values(1020,'ST07',10)
insert into cthd values(1021,'ST08',5)
insert into cthd values(1021,'TV01',7)
insert into cthd values(1021,'TV02',10)
insert into cthd values(1022,'ST07',1)
insert into cthd values(1023,'ST04',6)
select *from HOADON
select *from CTHD

--I.Ngon ngu dinh nghia du lieu(DDL)
--Rang buoc Khoa ngoai

--Khoa ngoai giua khach hang vs hoa don
ALTER TABLE HOADON
ADD CONSTRAINT FK_HD_KH
FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)

--Khoa ngoai giua nhan vien vs hoa don
ALTER TABLE HOADON
ADD CONSTRAINT FK_HD_NV
FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)

--Khoa ngoai giua cthd vs hoa don
ALTER TABLE CTHD
ADD CONSTRAINT FK_HD_CTHD
FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD)

--Khoa ngoai giua sanpham vs cthd
ALTER TABLE CTHD
ADD CONSTRAINT FK_CTHD_SP
FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)

--2. Thêm vào thuộc tính GHICHU có kiểu dữ liệu varchar(20) cho quan hệ SANPHAM.
ALTER TABLE SANPHAM
ADD GHICHU Varchar(20)
--3. Thêm vào thuộc tính LOAIKH có kiểu dữ liệu là tinyint cho quan hệ KHACHHANG.
ALTER TABLE KHACHHANG
ADD LOAIKH tinyint

--4. Sửa kiểu dữ liệu của thuộc tính GHICHU trong quan hệ SANPHAM thành varchar(100).
ALTER TABLE SANPHAM
ALTER COLUMN GHICHU varchar(100)

--5. Xóa thuộc tính GHICHU trong quan hệ SANPHAM.
ALTER TABLE SANPHAM
DROP COLUMN GHICHU

--6. Làm thế nào để thuộc tính LOAIKH trong quan hệ KHACHHANG có thể lưu các giá trị là: 
--“Vang lai”, “Thuong xuyen”, “Vip”…
ALTER TABLE KHACHHANG
ADD CONSTRAINT KH_LOAIKH
CHECK(LOAIKH IN('Vang lai','Thuong xuyen','Vip'))

--7. Đơn vị tính của sản phẩm chỉ có thể là (“cay”,”hop”,”cai”,”quyen”,”chuc”)
ALTER TABLE SANPHAM
ADD CONSTRAINT DVT_SP
CHECK(DVT IN('cay','hop','cai','quyen','chuc'))

--8. Giá bán của sản phẩm từ 500 đồng trở lên.
ALTER TABLE SANPHAM
ADD CONSTRAINT GIA_SP
CHECK(GIA>500)

--9. Mỗi lần mua hàng, khách hàng phải mua ít nhất 1 sản phẩm.
ALTER TABLE CTHD
ADD CONSTRAINT CTHD_SL
CHECK(SL>=1)

--10. Ngày khách hàng đăng ký là khách hàng thành viên phải lớn hơn ngày sinh của người đó.
ALTER TABLE KHACHHANG
ADD CONSTRAINT KH_SOSANH
CHECK(NGDK>NGSINH)

--II. Ngôn ngữ thao tác dữ liệu (Data Manipulation Language):
--1. Nhập dữ liệu cho các quan hệ trên.
--2. Tạo quan hệ SANPHAM1 chứa toàn bộ dữ liệu của quan hệ SANPHAM. Tạo quan hệ
--KHACHHANG1 chứa toàn bộ dữ liệu của quan hệ KHACHHANG.
SELECT*INTO SANPHAM1
FROM SANPHAM

SELECT*INTO KHACHHANG1
FROM KHACHHANG

--3. Cập nhật giá tăng 5% đối với những sản phẩm do “Thai Lan” sản xuất 
--(cho quan hệ SANPHAM1)
UPDATE SANPHAM1
SET GIA=GIA*1.05
WHERE NUOCSX='Thai Lan'

--4. Cập nhật giá giảm 5% đối với những sản phẩm do “Trung Quoc” sản xuất 
--có giá từ 10.000 trở xuống (cho quan hệ SANPHAM1).
UPDATE SANPHAM1
SET GIA=GIA*0.95
WHERE NUOCSX='Thai Lan' and GIA<=10000

--5. Cập nhật giá trị LOAIKH là “Vip” đối với những khách hàng đăng ký thành viên trước ngày
--1/1/2007 có doanh số từ 10.000.000 trở lên hoặc khách hàng đăng ký thành viên từ 1/1/2007 trở về
--sau có doanh số từ 2.000.000 trở lên (cho quan hệ KHACHHANG1).

UPDATE KHACHHANG1
SET LOAIKH='Vip'
WHERE (NGDK<1/1/2007 AND DOANHSO >=10000000)OR (NGDK>1/1/2007 AND DOANHSO >=2000000)

--III. Ngôn ngữ truy vấn dữ liệu có cấu trúc:
--1. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.
SELECT MASP ,TENSP FROM SANPHAM
WHERE NUOCSX='Trung Quoc'

--2. In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
SELECT MASP ,TENSP FROM SANPHAM
WHERE DVT IN('Cay','Quyen')

--3. In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” 
--và kết thúc là “01”.

SELECT MASP ,TENSP FROM SANPHAM
WHERE MASP LIKE 'B%01'

--4. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất 
--có giá từ 30.000 đến 40.000. 

SELECT MASP ,TENSP FROM SANPHAM
WHERE NUOCSX='Trung Quoc' AND GIA BETWEEN 30000 AND 40000

--5. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất
--có giá từ 30.000 đến 40.000.
SELECT MASP ,TENSP FROM SANPHAM
WHERE (NUOCSX='Trung Quoc' OR NUOCSX='Thai Lan') And GIA BETWEEN 30000 AND 40000

--6 In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
SELECT SOHD,TRIGIA FROM HOADON
WHERE NGHD IN('01/01/2007','02/01/2007')

--7. In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp 
--theo ngày (tăng dần) và trị giá của hóa đơn (giảm dần).
SELECT SOHD,TRIGIA FROM HOADON
WHERE YEAR(NGHD)=2007 AND MONTH(NGHD)=7
ORDER BY  NGHD ASC , TRIGIA DESC
--8. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
SELECT KH.MAKH,KH.HOTEN FROM KHACHHANG AS KH INNER JOIN HOADON AS HD
ON HD.MAKH=KH.MAKH
WHERE NGHD='1/1/2007'
--9. In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày
--28/10/2006.
SELECT SOHD,TRIGIA,NV.MANV FROM HOADON AS HD INNER JOIN NHANVIEN AS NV
ON HD.MANV=NV.MANV
WHERE HOTEN='Nguyen Van B' AND NGHD= 28/10/2006

--10. In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong
--tháng 10/2006.
SELECT SP.MASP,TENSP FROM SANPHAM AS SP,KHACHHANG AS KH,HOADON AS HD,CTHD AS CT
WHERE KH.HOTEN='Nguyen Van A'
AND KH.MAKH=HD.MAKH
AND SP.MASP=CT.MASP
AND CT.SOHD=HD.SOHD
AND YEAR(NGHD)=2006 AND MONTH(NGHD)=10

--11. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
SELECT SOHD FROM CTHD 
WHERE MASP='BB01' OR MASP='BB02'

--12. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số
--lượng từ 10 đến 20.
SELECT SOHD FROM CTHD
WHERE (MASP='BB01' OR MASP='BB02') AND SL BETWEEN 10 AND 20

--13. Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với
--số lượng từ 10 đến 20.
SELECT SOHD FROM CTHD 
WHERE MASP='BB01' AND SL BETWEEN 10 AND 20
INTERSECT
SELECT SOHD FROM CTHD 
WHERE MASP='BB02' AND SL BETWEEN 10 AND 20

--14. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được
--bán ra trong ngày 1/1/2007.
SELECT MASP,TENSP FROM SANPHAM 
where NUOCSX='Trung Quoc'
UNION
Select SANPHAM.MASP,TENSP
From HOADON, CTHD, SANPHAM
where NGHD = ' 1/1/2007' 
AND SANPHAM.MASP=CTHD.MASP
AND CTHD.SOHD=HOADON.SOHD

--15. In ra danh sách các sản phẩm (MASP,TENSP) không bán được.
--SELECT MASP,TENSP FROM SANPHAM AS SP1
--WHERE NOT EXISTS (SELECT * FROM SANPHAM AS SP2 INNER JOIN CTHD AS CT
--ON SP2.MASP=CT.MASP
--AND SP1.MASP=SP2.MAS)

SELECT MASP,TENSP 
FROM SANPHAM
EXCEPT
SELECT SP.MASP,SP.TENSP 
FROM SANPHAM AS SP INNER JOIN CTHD AS CT
ON SP.MASP=CT.MASP


--16. In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.

SELECT MASP,TENSP 
FROM SANPHAM
EXCEPT
SELECT SP.MASP,SP.TENSP 
FROM SANPHAM AS SP , CTHD AS CT , HOADON AS HD
WHERE SP.MASP=CT.MASP AND CT.SOHD=HD.SOHD AND YEAR(NGHD)=2006

SELECT MASP,TENSP FROM SANPHAM 
WHERE MASP NOT IN (SELECT CT.MASP FROM HOADON AS HD INNER JOIN CTHD AS CT
ON HD.SOHD=CT.SOHD
WHERE YEAR(NGHD)=2006)

SELECT MASP,TENSP 
FROM SANPHAM 
WHERE  NOT EXISTS (SELECT * FROM HOADON AS HD , CTHD AS CT 
where HD.SOHD=CT.SOHD and SANPHAM.MASP=CT.MASP
and YEAR(NGHD)=2006 )

--17. In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm
--2006.
SELECT SP.MASP,SP.TENSP FROM SANPHAM  AS SP INNER JOIN CTHD AS CT
ON CT.MASP=SP.MASP
WHERE NUOCSX='Trung Quoc'
AND  SP.MASP NOT IN(SELECT CT.MASP FROM CTHD AS CT INNER JOIN HOADON AS HD
ON CT.SOHD=HD.SOHD
WHERE YEAR(NGHD)=2006)

SELECT MASP,TENSP 
FROM SANPHAM  
WHERE NUOCSX='Trung Quoc'
AND  NOT EXISTS (SELECT * FROM CTHD AS CT , HOADON AS HD
where  CT.SOHD=HD.SOHD and SANPHAM.MASP=ct.MASP
and YEAR(NGHD)=2006)

--18. Tìm số hóa đơn  đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.

SELECT SOHD 
FROM HOADON AS HD
WHERE NOT EXISTS (SELECT*FROM SANPHAM AS SP WHERE NUOCSX='SINGAPORE'
AND NOT EXISTS (SELECT *FROM CTHD AS CT WHERE CT.SOHD=HD.SOHD
AND SP.MASP=CT.MASP))

--19. Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.
SELECT SOHD 
FROM HOADON AS HD
WHERE YEAR(NGHD)=2006
AND NOT EXISTS (SELECT*FROM SANPHAM AS SP WHERE NUOCSX='SINGAPORE'
AND NOT EXISTS (SELECT *FROM CTHD AS CT WHERE CT.SOHD=HD.SOHD
AND SP.MASP=CT.MASP))

--19* Tìm khách hàng trong một lần mua trong năm 2006 đã mua 
--tất cả các sản phẩm do Singapore sản xuất

SELECT KH.MAKH,HOTEN
FROM KHACHHANG AS KH,HOADON AS HD
WHERE KH.MAKH=HD.MAKH 
AND YEAR(NGHD)=2006
AND NOT EXISTS (SELECT * FROM SANPHAM AS SP WHERE NUOCSX='Singapore'
AND NOT EXISTS (SELECT* FROM CTHD AS CT WHERE CT.SOHD=HD.SOHD
AND SP.MASP=CT.MASP))

SELECT *fROM SANPHAM
SELECT *fROM HOADON

--20. Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
SELECT COUNT(*) 
FROM HOADON AS HD
WHERE MAKH NOT IN(SELECT MAKH FROM KHACHHANG AS KH 
WHERE HD.MAKH=KH.MAKH)

--21. Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
SELECT  COUNT(DISTINCT MASP)  as slsp
FROM CTHD AS CT , HOADON AS HD
where CT.SOHD=HD.SOHD 
and YEAR(NGHD)=2006

--22. Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu?
SELECT MAX(TRIGIA) AS GIAHOADONCAONHAT ,MIN(TRIGIA) AS GIAHOADONTHAPNHAT 
FROM HOADON

--23. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
SELECT AVG(TRIGIA) 
FROM HOADON
WHERE YEAR(NGHD)=2006

--24. Tính doanh thu bán hàng trong năm 2006.
SELECT SUM(TRIGIA) AS DOANHTHU
FROM HOADON
WHERE YEAR(NGHD)=2006

--24. Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
SELECT SOHD FROM HOADON
WHERE TRIGIA=(SELECT MAX(TRIGIA) FROM HOADON WHERE YEAR(NGHD)=2006)
--25. Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
SELECT HOTEN FROM KHACHHANG AS KH INNER JOIN HOADON AS HD
ON KH.MAKH=HD.MAKH
WHERE SOHD=(SELECT SOHD FROM HOADON WHERE TRIGIA=(SELECT MAX(TRIGIA) FROM HOADON))
AND YEAR(NGHD)=2006

--26. In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.
SELECT TOP 3 MAKH,HOTEN FROM KHACHHANG
ORDER BY DOANHSO DESC

--27. In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
SELECT MASP,TENSP FROM SANPHAM
WHERE GIA IN(SELECT DISTINCT TOP 3 GIA 
			 FROM SANPHAM 
			 ORDER BY GIA DESC)

--28 In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức
--giá cao nhất (của tất cả các sản phẩm).

SELECT MASP,TENSP FROM SANPHAM
WHERE NUOCSX='Thai Lan'
AND GIA IN(SELECT DISTINCT TOP 3 GIA 
		   FROM SANPHAM 
		   ORDER BY GIA DESC)

--29. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức
--giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).

SELECT MASP,TENSP FROM SANPHAM
WHERE NUOCSX='Trung Quoc'
AND GIA IN(SELECT DISTINCT TOP 3 GIA 
		   FROM SANPHAM WHERE NUOCSX='Trung Quoc'
		   ORDER BY GIA DESC)

--30.* In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng).
SELECT TOP 3 MAKH,HOTEN FROM KHACHHANG
ORDER BY DOANHSO DESC

--31. Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
SELECT COUNT(MASP)  as TongSoSanPham
FROM SANPHAM
WHERE NUOCSX='Trung Quoc'

--32 Tính tổng số sản phẩm của từng nước sản xuất.
SELECT  NUOCSX,COUNT(DISTINCT MASP) AS TongSoSanPham
FROM SANPHAM
GROUP BY NUOCSX

--33. Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.
SELECT NUOCSX,MAX(GIA) AS MAX,MIN(GIA) AS MIN,AVG(GIA) AS AVG  
FROM SANPHAM
GROUP BY NUOCSX

--34. Tính doanh thu bán hàng mỗi ngày.
SELECT NGHD,SUM(TRIGIA) AS DOANHTHU
FROM HOADON
GROUP BY NGHD

--35. Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.
SELECT MASP,COUNT(DISTINCT MASP)  AS TONGSO
FROM SANPHAM 
WHERE MASP IN(SELECT MASP FROM CTHD AS CT ,HOADON AS HD
WHERE CT.SOHD=HD.SOHD 
AND YEAR(NGHD)=2006 
AND MONTH(NGHD)=6)
GROUP BY MASP

--36. Tính doanh thu bán hàng của từng tháng trong năm 2006.
SELECT MONTH(NGHD)AS THANG,SUM(TRIGIA) AS DOANHTHU 
FROM HOADON
GROUP BY MONTH(NGHD)

--37. Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
SELECT *fROM HOADON
WHERE SOHD IN(SELECT SOHD FROM CTHD WHERE SL>=4 AND HOADON.SOHD=CTHD.SOHD)

--38. Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).
SELECT *FROM HOADON
WHERE SOHD IN(SELECT SOHD FROM CTHD AS CT,SANPHAM AS SP
WHERE CT.MASP=SP.MASP AND SL>=3 AND NUOCSX='Viet Nam')

--39. Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.
SELECT MAKH,HOTEN FROM KHACHHANG
WHERE MAKH IN (SELECT TOP 1  MAKH FROM HOADON
GROUP BY MAKH
ORDER BY COUNT(DISTINCT SOHD) DESC)

--40. Tháng mấy trong năm 2006, doanh số bán hàng cao nhất ?
SELECT TOP 1 MAX(SOHD) AS DOANHSOMAX
FROM HOADON,KHACHHANG
WHERE HOADON.MAKH=KHACHHANG.MAKH AND YEAR(NGHD)=2006
GROUP BY MONTH(NGHD)
ORDER BY SUM(DOANHSO) DESC

--41. Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.
SELECT MASP,TENSP 
FROM SANPHAM
WHERE MASP=(SELECT TOP 1 MASP FROM CTHD AS CT , HOADON AS HD
			WHERE CT.SOHD=HD.SOHD
			GROUP BY MASP
			ORDER BY SUM(SL) ASC)

--42. *Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.
SELECT NUOCSX, MASP,TENSP FROM SANPHAM
WHERE MASP=(SELECT TOP 1 MASP FROM SANPHAM 
			GROUP BY MASP
			ORDER BY SUM(GIA) DESC)
			SELECT *FROM SANPHAM

--43. Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.
SELECT NUOCSX FROM SANPHAM
GROUP BY NUOCSX
HAVING COUNT(DISTINCT GIA)>=3
			






