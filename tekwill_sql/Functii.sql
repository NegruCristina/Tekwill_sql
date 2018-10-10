SELECT course_name AS "Course_Name",
        department_id AS "Department",
        session_id
FROM AD_course_details
WHERE course_name like '%BIOLOGY%'
OR course_name like '%ACCOUNTING%'
Order by session_id desc, 1;


SELECT student_id,
       exam_id,
       course_id as "course id",
       marks as "points"
       FROM ad_exam_results
WHERE COURSE_ID is not null
Order by 2, points desc;




Create table String_Addreses as
Select 'MD-2002,or.Chisinau, str. Mihai Eminescu 12, ap.28' as address from dual
Union
Select '2010,or.Chisinau, str. Grigore Vieru 50, ap.3' as address from dual
Union
Select 'MD2015,or.Chisinau, str. Ion Creanga 4, ap.17'  as address from dual
Union
Select 'md-2030,Chisinau, st. Muncesti 8, ap.54'  as address from dual
Union
Select 'MD-2004,Chisineov, str-da. Bucuriei 2, ap.23'  as address from dual
Union
Select 'Md-2045,or Chisin., s. Ion Inculet 8, ap.50'  as address from dual
Union
Select 'Md2013,chisinau, str. Vasile Lupu 40, ap.20'  as address from dual
Union
Select 'MD2031,or.CHISINAU,'  as address from dual
Union
Select 'md2017,or.CH, str. , ap.28'  as address from dual;


SELECT *
FROM String_Addreses;



Select Substr(address,1,instr(address,',',1,1)-1) as t1
     ,'MD-'||substr(Substr(address,1,instr(address,',',1,1)-1),-4) zip_code
From String_Addreses;



Select address
     ,instr(address,',',1,1) as t1
     ,substr(address,1,instr(address,',',1,1)-1) as t2
     ,substr(substr(address,1,instr(address,',',1,1)-1),-4,4)as t3
     ,'MD-'||substr(substr(address,1,instr(address,',',1,1)-1),-4,4) as adress
From String_Addreses;










SELECT *
FROM employees;

SELECT salary,
      Lpad(salary,6,'$'),
      Rpad(salary,6,'e')
FROM employees;



SELECT salary,
      Lpad(salary,6,'$'),
      Rpad(salary,6,'e'),
      concat(concat(first_name, ' '),Last_name) as "full name"
FROM employees;





Select Substr(address,1,instr(address,',',1,1)-1) as t1
     ,'MD-'||substr(Substr(address,1,instr(address,',',1,1)-1),-4) zip_code
From String_Addreses;




Select address
     ,instr(address,',',1,1) as t1
     ,substr(address,1,instr(address,',',1,1)-1) as t2
     ,substr(substr(address,1,instr(address,',',1,1)-1),-4,4)as t3
     ,'MD-'||substr(substr(address,1,instr(address,',',1,1)-1),-4,4) as address
From String_Addreses;


Select address,
instr(address,',',1,1) as t1
From String_Addreses;


Select address,
substr(address,1,instr(address,',',1,1)-1) as t2
From String_Addreses;


Select address,
substr(substr(address,1,instr(address,',',1,1)-1),-4,4)as t3
From String_Addreses;

Select address,
'MD-'||substr(substr(address,1,instr(address,',',1,1)-1),-4,4) as address
From String_Addreses;




Select ADDRESS,
   substr(address,instr(address, 'str'),3) as x1 
From String_Addreses 
where address like ('%st%');




SELECT SUBSTR('ABCDEFG',-5,4) "Substring"
FROM DUAL;




SELECT round (100.455321,2) as round_1,
     round(100.455521,2) as round_2,
      round(100.455521) as round_3,
       round(155.555521,-1) as round_4,
   round(100.555521) as round_5,
    round(150.555521,-2)as round_6,
    round(150.500,-3) as round_7
FROM dual;


SELECT trunc (100.455321,2) as trunc_1,
     trunc(100.455521,2) as trunc_2,
      trunc(100.455521) as trunc_3,
       trunc(155.555521,-1) as trunc_4,
    trunc(100.555521) as trunc_5,
    trunc(150.555521,-2)as trunc_6,
    trunc(150.500,-3) as trunc_7
FROM dual;

SELECT ceil (100.555321) as ceil_1
FROM dual;



SELECT ceil (100.555321) as ceil_1
FROM dual;


SELECT floor (105.5555) as floor_1
FROM dual;



SELECT floor (109.9555) as floor_1
FROM dual;


SELECT ceil (109.555321) as ceil_1
FROM dual;


SELECT mod(10,5) as mod_1,
      mod(10,2) as mod_2,
      mod(100,3) as mod_3
FROM dual;





Select *
FROM EMPLOYEES;


