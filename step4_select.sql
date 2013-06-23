SELECT chunk_id,
       status,
       start_rowid,
       end_rowid
  FROM user_parallel_execute_chunks
 ORDER BY chunk_id
/

SELECT session_id,
       COUNT(*)
  FROM employees2
 GROUP BY session_id
 ORDER BY session_id
/

