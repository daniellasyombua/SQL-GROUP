
create schema children_vaccination;
create table children_vaccination.child_details(
child_id SERIAL PRIMARY KEY,
first_name VARCHAR(120) NOT NULL,
last_name VARCHAR(120) NOT NULL,
date_of_birth VARCHAR(120),
birth_certificate_no VARCHAR(120) NOT NULL,
gender VARCHAR(120) CHECK(gender in('male','female')),
blood_group VARCHAR(120)
);

select * from children_vaccination.child_details;

DROP TABLE  children_vaccination.child_details;



CREATE TABLE children_vaccination.medical_detail (
    medical_id SERIAL PRIMARY KEY,
    child_id INTEGER NOT NULL,
    blood_group VARCHAR(3) CHECK (blood_group IN ('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-')),
    child_condition TEXT,
    chronic_conditions TEXT,
    child_weight NUMERIC(5,2) NOT NULL CHECK(child_weight>0),
    child_height NUMERIC(5,2) NOT NULL CHECK(child_height>0),

    CONSTRAINT fk_child
    FOREIGN KEY (child_id) 
    REFERENCES children_vaccination.child_details (child_id) 
    ON DELETE cascade ON UPDATE  CASCADE
);

select * from children_vaccination.medical_details;

INSERT INTO children_vaccination.child_details (first_name, last_name, date_of_birth,birth_certificate_no, gender,blood_group)
VALUES
    ('Jane',	'wamboi',	'2020-03-10',	'167839909',	'female',	'AB-'),
('Janet',	'wumboi',	'2019-07-18',	'765899909',	'female',	'O-'),
('Erick',	'wanjala',	'2021-10-14',	'467939909',	'male',	'A+'),
('Eliana',	'Joy',	'2022-12-14',	'4679326909',	'female',	'AB+'),
('Winny',	'Wally',	'2023-09-24',	'68939909',	'female',	'A+'),
('Erica',	'Line',	'2023-08-23',	'387939909',	'female',	'AB-'),
('John',	'wilson',	'2022-11-7',	'897639909',	'male',	'O+'),
('Liny',	'Fany',	'2023-10-10',	'327839909',	'female',	'A+'),
('James',	'Tomy',	'2021-01-13',	'37284909',	'male',	'O+'),
('Jimmy',	'Turbo',	'2022-10-14',	'329909',	'male',	'O-'),
('Lina',	'Wayz',	'2022-02-14',	'98766909',	'female',	'O-'),
('Eric',	'Mayn',	'2023-09-1',	'467939909',	'male',	'A+'),
('Jay',	'Boso',	'2023-7-4',	'9378910909',	'male',	'AB+'),
('Bei',	'Lana',	'2022-10-14',	'667939909',	'female',	'A+'),
('Limo',	'Takur',	'2021-10-14',	'467939909',	'male',	'AB-')


    SELECT * FROM children_vaccination.child_details;
INSERT INTO children_vaccination.medical_details (child_id, blood_group,child_condition, chronic_conditions,child_weight,child_height)
VALUES
   (1, 'AB-', 'underweight', 'Diabetes',15.36,95.02),
    (2, 'O-', 'normal', 'Asthma',20.43,110.54),
    (3, 'A+', 'obese', 'Asthma',29.85,95.14),
    (4, 'AB+', 'underweight', 'Diabetes',14.24,80.01),
     (5, 'A+', 'underweight', 'Diabetes',13.21,90.54),
    (6, 'AB-', 'normal', 'Asthma',17.86,100.43),
    (7, 'O+', 'normal', 'Asthma',18.01,78.53),
    (8, 'A+', 'obese', 'Diabetes',27.27,95.42),
     (9, 'O+', 'normal', 'Diabetes',20.04,100.31),
    (10, 'O-', 'underweight', 'Asthma',14.39,93.15),
    (11, 'O-', 'normal', 'Asthma',17.57,105.02),
    (12, 'A+', 'normal', 'Diabetes',16.47,89.43),
     (13, 'AB+', 'obese', 'Diabetes',26.94,89.21),
    (14, 'A+', 'underweight', 'Asthma',14.58,97.53),
    (15, 'AB-', 'normal', 'Asthma',22.46,105.57)

    SELECT * FROM children_vaccination.medical_details

    SELECT count(*)
    FROM (select child_id
    ROUND(child_weight / (child_height/100 * child_height/100), 3) AS BMI
    from children_vaccination.medical_details;
    )
    SELECT AVG (weight / (height * height)) AS AVERAGE_BMI
    FROM child_vaccination.medical

