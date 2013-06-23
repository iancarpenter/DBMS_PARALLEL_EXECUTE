BEGIN

   dbms_parallel_execute.run_task
   (
      task_name      => 'MyTask',
      sql_stmt       => 'BEGIN update_emps(:start_id, :end_id ); END;',
      language_flag  => DBMS_SQL.NATIVE,
      parallel_level => 4
   );

END;
/
