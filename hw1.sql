/* QUESTION 2
CREATE OR REPLACE PROCEDURE CHANGE_MANAGER
(
DEPA_ID IN NUMBER,
MANE_ID IN NUMBER
)
IS
BEGIN

UPDATE departments
set manager_id = MANE_ID
WHERE department_id = DEPA_ID;
END CHANGE_MANAGER;

EXECUTE CHANGE_MANAGER(10,201);
*/



/* QUESTION 3
CREATE OR REPLACE FUNCTION RETURN_VALUE
(
DEPT_ID IN INT
)
RETURN VARCHAR
IS

p_first_name system.employees.first_name%type;
p_last_name system.employees.last_name%type;

BEGIN
SELECT employees.first_name,employees.last_name into p_first_name,p_last_name
FROM system.employees 
WHERE employee_id IN (SELECT manager_id 
                      FROM system.departments
                      WHERE department_id = DEPT_ID);

RETURN p_first_name || p_last_name;

END RETURN_VALUE;

EXECUTE DBMS_OUTPUT.PUT_LINE(RETURN_VALUE(100));

*/






