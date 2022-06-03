create database  ;
use testingsystem;


SELECT 
* 
FROM
department
where DepartmentName = 'Phó giám đốc';

-- Câu 1: Tìm danh sách nhân viên thuộc phòng ban Sales, 
-- sao cho FullName của nhân viên có độ dài lớn hơn độ dài trung bình 
-- FullName của nhân viên phòng ban Sales

WITH 
nhanvien_trong_phong_ban_sale AS ( 
	SELECT 
		A.*
	FROM
		account A
			JOIN
		department D ON A.DepartmentID = D.DepartmentID
	WHERE
		D.DepartmentName = 'Sales'),
		
do_dai_fullname_trung_binh_cua_nv_phong_ban_sale AS (
    
		SELECT AVG(LENGTH(FullName)) AS do_dai_trung_binh 
			FROM nhanvien_trong_phong_ban_sale
			
	)
	
SELECT 
	* 
FROM 
    nhanvien_trong_phong_ban_sale 
WHERE 
	LENGTH(FullName) > (
			SELECT 
				do_dai_trung_binh 
			FROM 
				do_dai_fullname_trung_binh_cua_nv_phong_ban_sale
		);
   -- cau 2:     
        WITH  CTE_Group_nhieu_account_nhat AS
(
	SELECT 		COUNT(GA.AccountID) as So_lan_thamgia_group
    FROM 		`Account` as A
    JOIN 		groupaccount as GA on A.AccountID = GA.AccountID
    GROUP BY	GA.AccountID 
    ORDER BY	So_lan_thamgia_group DESC
    LIMIT		1
),
Statistic_Account as 
( 
SELECT 		A.*, COUNT(GA.AccountID) So_lan_thamgia_group
FROM 		`Account` as A
JOIN 		groupaccount as GA on A.AccountID = GA.AccountID
GROUP BY	A.AccountID 
HAVING		COUNT(GA.AccountID))

SELECT *
from Statistic_Account 
WHERE	So_lan_thamgia_group = (SELECT * FROM CTE_Group_nhieu_account_nhat);
        
        