 create  database trainingmanagement ;
   use trainingmanagement ;
   CREATE TABLE trainee (
    traineeID INT PRIMARY KEY AUTO_INCREMENT,
    Full_name NVARCHAR(255),
    birth_date DATE,
    gerder ENUM('male', 'female'),
    et_iq TINYINT,
    CHECK (0 <= et_iq <= 20),
    et_gmath TINYINT,
    CHECK (0 <= et_gmath <= 20),
    et_english TINYINT,
    CHECK (0 <= english <= 20),
    Traiming_class VARCHAR(255),
    EVALUATION_Notes TEXT
);
alter table trainee 
add constraint check_full_name_minlength check (length(  Full_name );