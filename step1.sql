BEGIN

   dbms_parallel_execute.create_task
   (
      task_name => 'MyTask',
   );

END;
/