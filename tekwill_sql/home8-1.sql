Select FACULTY_NAME || ' ' || 'earns' || ' ' || to_char(salary,'$99,999.999') || ' ' ||'monthly but wants' || ' ' || 
to_char(salary*3,'$99,999.999') || ' ' || '.' Dream_Salary
From ad_faculty_details;

sELECT *
FROM AD_FACULTY_DETAILS;



Select first_name,
student_reg_year,
to_char(NEXT_DAY(add_months(student_reg_year,6),'Monday'),'fmDay, "the" DDspth "of" Month, YYYY') Review
FROM AD_STUDENT_DETAILS;


Select first_name,
NVL(email_addr, 'No email adress')
FROM AD_STUDENT_DETAILS;

select*
FROM AD_STUDENT_DETAILS;

Select  student_id,
marks,
to_char(marks,'$99') Prize_amound
FROM AD_exam_results
where marks>=90;


