/*Department (Department_Number, Department_Name)
Employee_Table (Employee_Number, Employee_Name,
Department_Number)
Employee_Skill_Table (Employee_Number, Skill_Code, Date Registered)
*/
/* Question 1: Tạo table với các ràng buộc và kiểu dữ liệu
Question 2: Thêm ít nhất 10 bản ghi vào table
Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java

Hướng dẫn: sử dụng UNION

Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
Question 5: Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban.
Hướng dẫn: sử dụng GROUP BY
Question 6: Viết lệnh để lấy ra danh sách nhân viên có > 1 skills.

Hướng dẫn: sử dụng DISTINCT 
*/


create database Assignment_4;
use Assignment_4 ;
create table Department9 (

Department_Number int    ,
Department_Name NVARCHAR(50)

);
create table Employee_Table (
Employee_Number int ,
 Employee_Name VARCHAR(25),
 Department_Numbe1 int 
 );
create table Employee_Skill_Table (
Employee_Number int ,
Skill_Code 	CHAR(10) NOT NULL, 
Date_Registered date
);

-- Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java
select 
*
from
Employee_Skill_Table
 where Skill_Code = 'Java'
 
-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
select 
*
from
Dep




