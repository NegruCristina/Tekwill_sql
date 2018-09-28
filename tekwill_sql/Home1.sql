Select FIRST_NAME || ' ' || LAST_NAME AS "Nume Prenume"
       ,HIRE_DATE
       ,SALARY
FROM employees;


Describe ad_course_details

Describe ad_student_details


Select Student_id,
       first_name,
       parent_id,
       student_reg_year
FROM ad_student_details;


Select Student_id, 
       first_name,
       parent_id,
       student_reg_year AS "Registration"
FROM ad_student_details;



SELECT *
FROM ad_exam_details;

SELECT Name
From ad_exam_DETAILS;



Select DISTINCT Name
From ad_exam_details;

SELECT student_id AS "Student#",
       first_name AS "Student",
       parent_id AS "Parent_Information",
       student_reg_year AS "Registration ON"
From ad_student_details;


SELECT *
FROM AD_COURSE_DETAILS;


SELECT COURSE_ID || ' , ' || Course_Name AS "Course ID and Name"
From ad_course_details;

SELECT EXAM_ID || ',' || EXAM_TYPE|| ',' || START_DATE || ',' || NAME
FROM AD_EXAM_DETAILS;