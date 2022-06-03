SELECT * FROM testingsystem.question;
with danh_sach_phong_ban as(
SELECT		A.*, COUNT(A.DepartmentID) as danh_sach_pb
FROM		department as D
JOIN		`account` as A on D.DepartmentID = A.DepartmentID
GROUP BY	A.DepartmentID)
SL_NV_TRONGPB as (	SELECT		
COUNT(A.DepartmentID) as 
										FROM		department as D 
										JOIN		`account` as A on D.DepartmentID = A.DepartmentID
										GROUP BY	A.DepartmentID
										ORDER BY	COUNT(A.DepartmentID) DESC
										LIMIT		1);
                                        
                                        
                                        
                                        
          --  CAU 3                           
with CAU_HOI_CHUA_CONTENT_QUA_DAI AS( SELECT 
        question.*, LENGTH(Content) as LENGTH_CT
    FROM
        Question)
    


