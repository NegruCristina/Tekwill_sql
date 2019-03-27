
--1)

Select course_name,
department_name
from ad_department
natural join ad_course_details;

--2)

Select course_name,
department_name,
HOD
from ad_department
natural join ad_course_details;

--3)


select t.course_name,
t_1.session_name
from AD_COURSE_DETAILS t
join ad_academic_session t_1
on t.session_id = t_1.session_id
where t_1.session_id =300;

--4)

select f.course_id,
c.course_name,
d.faculty_name
from AD_FACULTY_course_DETAILS f
join ad_course_details c
on (f.course_id=c.course_id)
join AD_faculty_DETAILS d
using (faculty_id);

--6)
Select a.student_id Student_id,
       a.first_name First_name,
       b.exam_id Exam_id, 
       b.marks Marks
From ad_student_details a
join ad_exam_results b
on a.student_id=b.student_id
Where b.marks between 60 and 70;


--7)
