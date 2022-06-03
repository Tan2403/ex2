create  database Testing_System_Assignment_3;
use testingsystem;
/* Question 2: lấy ra tất cả các phòng ban*/
 SELECT * FROM testingsystem.department;
 
-- Question 3: lấy ra id của phòng ban "Sale"
 SELECT 
DepartmentID
FROM Department
WHERE DepartmentName = N'Sale';


-- Question 4: lấy ra thông tin account có full name dài nhất
SELECT *
FROM `Account`
WHERE LENGTH(Fullname) = (SELECT
 MAX(LENGTH(Fullname)) FROM `Account`);

-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id =3 

SELECT *
FROM `Account`
WHERE LENGTH(Fullname) = (SELECT
 MAX(LENGTH(Fullname)) FROM `Account`);
 
-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019
select * from `group`
where CreateDate < '2019/12/20';
 -- Question 7: Lấy ra ID của question có >= 4 câu trả lời
 SELECT*  FROM  testingsystem.answer;
 SELECT QuestionID,count(QuestionID) from `answer`     
 group by QuestionId 
having count(QuestionID) >= 4;
-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT *
FROM 
exam



CreateDate < '20/12/2019' ;
-- Question 9: Lấy ra 5 group được tạo gần đây nhất
SELECT *
FROM `Group`
group by  CreateDate 
LIMIT 5;
-- Question 10: Đếm số nhân viên thuộc department có id = 2
SELECT departmentID, COUNT(AccountID) AS So_luong
FROM `Account`
WHERE DepartmentID = 2;
-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"

-- Question 12: Xóa tất cả 




 -- các exam được tạo trước ngày 20/12/2019
DELETE FROM Exam 
WHERE
    CreateDate < '2019-12-20';
-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
delete FROM Question;

-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
update 'Nguyễn_Bá_Lộc'
 SET AccountID = 5
 -- Question 15: update account có id = 5 sẽ thuộc group có id = 4 
 UPDATE `GroupAccount`
 SET AccountID = 5
WHERE GroupID = 4;

-- lấy giá trị lớn nhất
select * from
`account`
where length(fullname)  = ( select max(length(fullname)) from `account` );





