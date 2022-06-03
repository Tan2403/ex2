SELECT * FROM testingsystem.group;
-- tim account  co fullname > 10
SELECT
fullName  , length(fullName)
  FROM 
account
GROUP BY  FullName having  length(fullName)  > 10 ;

SELECT 
    *, length(fullName) as `Độ dài của FullName`
FROM
    account
WHERE
    LENGTH(fullName) > 10;