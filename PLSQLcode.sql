--Rambo Wu
--Danyal Rizvi
--Kaivan Shah
--Group E2
--PL/SQL code for Project

--replacing parent_id and child_id with names 
select pc."ROWID", 
p.first_name || ' ' || p.last_name as "parent_name",
c.first_name || ' ' || c.last_name as "child_name",
p.person_id as parent_id,
c.person_id as child_id
from "#OWNER#"."PARENT_CHILDREN" pc
join Person p on p.person_id = pc."PARENT_ID"
join Person c on c.person_id = pc."CHILD_ID";

--query all employees that are assigned to user
select 
       PERSON_ID,
       FIRST_NAME || ' ' || LAST_NAME as NAME,
       HOME_ADDRESS,
       ZIPCODE,
       HOME_PHONE,
       TYPE,
       DEPT_NAME
  from EMPLOYEE_DETAIL_VIEW
WHERE MANAGER_EMP = :PERSON_ID;

--Shows project that are assigned to user
select PROJECT_NO,
       PROJECT_TITLE,
       TYPE,
       STATUS,
       COMMENTS,
       DOCUMENTS,
       PERSON_ID,
       DEPT_NO,
       SUB_PROJECTS,
       SUB_PROJECT_OF,
       PROJECT_ACTIVE
  from PROJECT
WHERE PROJECT_NO = :P63_PROJECT_NO;

--Select LOV for department names
select dept_name as d,
       dept_no as r
  from Department d;

--Select LOV for all employee names. This is used in many places.
SELECT first_name || ' ' || last_name as d,
person_id as r
FROM Person 
WHERE type != 'PREVIOUS-EMPLOYEE' OR
      type != 'PERSON';

--Select LOV for all employee_types
SELECT DISTINCT(type) as d,
type as r
FROM Person
WHERE type != 'Previous-Employee' OR type != 'Person';

--Select LOV for Interim-Manager or Manager when creating a manager
--on Create Project form
select UNIQUE type as d,
       type as r
  from Person
where type = 'Interim-Manager' OR type = 'Manager';

--Select LOV for Interim-Manager, Manager or President for choosing 
--who should manage the project
SELECT first_name || ' ' || last_name as d,
person_id as r
FROM Person
WHERE type = 'President'
    OR type = 'Interim-Manager'
    OR type = 'Manager';

--Select LOV for showing name instead of person_id for parent_child table
select first_name || last_name as d,
       person_id as r
  from Person
 order by last_name;

 --Pending value for creating SUB_PROJECTS
 select 'PENDING' as d,
'PENDING' as r
FROM Person;

--Select LOV for displaying the project_title instead of project_no
--when assigning employee to project.
select project_title as d,
       project_no as r
  from Project
 order by 1;

--Authorization scheme for Employees, Project-Employees, and Interim-Managers
BEGIN
  IF upper(:EMPLOYEE_TYPE) = 'EMPLOYEE' 
    OR upper(:EMPLOYEE_TYPE) = 'INTERIM-MANAGER'
    OR upper(:EMPLOYEE_TYPE) = 'PROJECT-EMPLOYEE' THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END;

--Authorization scheme for President, Managers, and Interim-Managers
BEGIN
  IF upper(:EMPLOYEE_TYPE) = 'INTERIM-MANAGER'
     OR upper(:EMPLOYEE_TYPE) = 'PRESIDENT'
     OR upper(:EMPLOYEE_TYPE) = 'MANAGER' THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END;

--Authorization scheme for only employees
BEGIN
  IF upper(:EMPLOYEE_TYPE) = 'EMPLOYEE' THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END;

--Authorization scheme for managers and presidents
BEGIN
  IF upper(:EMPLOYEE_TYPE) = 'MANAGER' OR upper(:EMPLOYEE_TYPE) = 'PRESIDENT' THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END;

--Authorization scheme for presidents only
BEGIN
  IF upper(:EMPLOYEE_TYPE) = 'PRESIDENT' THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END;

--Authorization scheme for only Project-Employees
BEGIN
  IF upper(:EMPLOYEE_TYPE) = 'PROJECT-EMPLOYEE' THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END;

--Code for authenticating user in order to access application
FUNCTION authenticate (
  p_username IN VARCHAR2,
  p_password IN VARCHAR2
)
  RETURN BOOLEAN
  AS flag NUMBER;
BEGIN
    SELECT 1
    INTO flag
    FROM person p
    WHERE UPPER(p.username) = UPPER(p_username) AND p.password = p_password;
    RETURN TRUE;
    EXCEPTION
     WHEN no_data_found THEN
     RETURN FALSE;
END;