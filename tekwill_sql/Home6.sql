
SELECT Student_id,
       NO_OF_DAYS_OFF
From ad_student_attendance
Where no_of_days_OFF>=15;



SELECT COURSE_NAME,
      DEPARTMENT_ID
FROM AD_COURSE_DETAILS
WHERE COURSE_ID=199;





SELECT STUDENT_ID,
     MARKS
FROM AD_EXAM_RESULTS
WHERE MARKS NOT BETWEEN 65 AND 90;


SELECT student_id,
      first_name,
      student_reg_year
FROM AD_STUDENT_DETAILS
WHERE first_name in ('ROBERT', 'NINA')
order by student_id asc;
      

SELECT course_name,
      department_id
FROM ad_course_details
where department_id in ('20', '40')
order by course_name asc;



SELECT STUDENT_ID AS "STUDENT #",
       MARKS AS "SEMESTER MARKS"
FROM AD_EXAM_RESULTS
WHERE MARKS BETWEEN 65 AND 90 
AND COURSE_ID IN (199,189);




SELECT FIRST_NAME,
       STUDENT_REG_YEAR
FROM AD_STUDENT_DETAILS
WHERE STUDENT_REG_YEAR >= '01-JAN-2014' 
AND STUDENT_REG_YEAR <='31-DEC-2014';




SELECT FIRST_NAME,
       PARENT_ID
FROM AD_STUDENT_DETAILS
WHERE email_addr IS NULL;


SELECT first_name,
      student_reg_year,
      email_addr
FROM AD_STUDENT_DETAILS
WHERE email_addr IS NOT NULL
Order by 2 desc, 3 desc;



SELECT student_id,
       marks
FROM ad_exam_results
WHERE marks > &score;


SELECT course_id,
       course_name,
       session_id
FROM ad_course_details
WHERE department_id =&dept_num
ORDER BY course_name;


SELECT course_id,
       course_name,
       session_id
FROM AD_COURSE_DETAILS
WHERE department_id=20
order by course_id;

Select course_id,
       course_name,
       session_id
FROM AD_COURSE_DETAILS
WHERE department_id =40
order by session_id;



SELECT first_name
FROM AD_STUDENT_DETAILS
WHERE FIRST_NAME LIKE '_O%';


SELECT first_name
FROM AD_STUDENT_DETAILS
WHERE first_name like '%A%' 
and first_name like '%N%';


    
SELECT COURSE_ID,
       COURSE_NAME
FROM AD_COURSE_DETAILS
WHERE DEPARTMENT_ID IN ('10','20')
AND SESSION_ID NOT IN ('200','200');


SELECT student_id "Student #",
       exam_id "Exam Code",
       course_id "Course Code",
       Marks "Code"
FROM AD_EXAM_RESULTS
Where marks = 70;