Select sysdate
From dual;


Select student_id,
       course_id,
       marks,
       round(marks*1.155,0) as New_Score
From ad_exam_results;




Select student_id,
       course_id,
       marks,
       round(marks*1.155,0) as New_Score,
       round(marks*1.155,0)- marks as Increase
From ad_exam_results;




Select Initcap (first_name) as Name,
length (first_name) Length
from ad_student_details
where first_name like ('J%')
or first_name like ('R%')
or first_name like ('M%')
order by first_name;





Select Initcap (first_name) as Name,
length (first_name) Length
from ad_student_details
where first_name like '&start_letter%'
order by first_name;


Select Initcap (first_name) as Name,
length (first_name) Length
from ad_student_details
where first_name like upper ('&start_letter%')
order by first_name;




Select first_name,
round(months_between(sysdate, student_reg_year)) as Months_completed
from ad_student_details
order by student_reg_year;


Select exam_name,
LPAD (exam_type,15, '*') Exam_code
from AD_EXAM_type;



Select student_id,
Rpad(' ', marks/10,'*') student_and_their_marks
from AD_EXAM_RESULTS;



Select first_name,
trunc((sysdate - student_reg_year)/7) Week_completed
from ad_student_details 
where email_addr is null ;

Select *
from ad_student_details;