CREATE OR REPLACE PROCEDURE update_emps
(
   p_start_row_id IN ROWID,
   p_end_row_id   IN ROWID
)
IS
BEGIN

UPDATE employees2 e
SET e.salary     = salary * 0.10,
    e.session_id = sys_context( 'userenv', 'sessionid' )
WHERE e.rowid BETWEEN p_start_row_id AND p_end_row_id;

END update_emps;
/
 