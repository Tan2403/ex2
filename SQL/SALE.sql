SELECT * FROM testingsystem.department;
-- Tạo view có chứa danh sách nhân viên thuộc phòng ban sale
SELECT 
 *
 FROM
 account A
 join
 Department D ON
 A.DepartmentID = D.Department .ID

 WHERE DepartmentName = 'sale'