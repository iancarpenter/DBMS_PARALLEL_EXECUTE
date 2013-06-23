BEGIN

   dbms_parallel_execute.create_chunks_by_rowid
   (
      task_name   => 'MyTask',
      table_owner => USER,
      table_name  => 'EMPLOYEES2',
      by_row      => TRUE,
      chunk_size  => 1000
   );

END;
/