create database Assignment_6 ;
use testingsystem;
-- Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các account thuộc phòng ban đó

 delimiter $$
 create procedure proc_get_account_by_deptName (IN in_deptName varchar(250))
 begin
	select
		A.*
	from
    account A
		join
    department    
on
    A.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = in_deptName;
END $$

-- câu 2
 Delimiter $$
create procedure proc_get_account_total_in_group ()
begin
	select
		GA.GroupID, count(*)
from
	account A
         JOIN
    groupaccount   GA
ON
	A.AccountID = GA.AccountID
 group by GA.GroupID ;   
END $$

-- câu 3
 Delimiter $$
 create procedure`tim_TypeID_co_sl_cau_hoi_nhieu_nhat`()
begin
	select
		TypeID
    from
		question
    group by TypeID
    having count(*) = (
		select
			count(*) AS total_question
		FROM
			question
		group by TypeID
        order by Total_question desc
        limit 1
    );
 END $$
  Delimiter $$;  
-- cau 4
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_cau4`(OUT out_typeIdCoNhieuQuestionNhat varchar(255))
BEGIN
	SELECT 
		group_concat(TypeID) into out_typeIdCoNhieuQuestionNhat
	FROM
		(SELECT 
			TypeID, COUNT(*) AS total_question
		FROM
			question
		GROUP BY TypeID
		HAVING total_question = (SELECT 
				COUNT(*) AS total_question
			FROM
				question
			GROUP BY TypeID
			ORDER BY total_question DESC
			LIMIT 1)) temp_table
	GROUP BY total_question;
END 













-- cau 6

CREATE DEFINER=`root`@`localhost` PROCEDURE `search_in_group_and_account`(IN in_searchText VARCHAR(255) )
BEGIN
	SELECT 
		A.username, G.GroupName
	FROM
		account A
			LEFT JOIN
		groupaccount GA ON A.AccountID = GA.AccountID
			RIGHT JOIN
		`group` G ON G.GroupID = GA.GroupID
	WHERE
		A.username LIKE CONCAT('%', in_searchText, '%')
			OR G.GroupName LIKE CONCAT('%', in_searchText, '%');
END