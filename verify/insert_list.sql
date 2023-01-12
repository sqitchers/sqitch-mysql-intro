-- Verify insert_list

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "insert_list" does not exist')
  FROM information_schema.routines
 WHERE routine_schema = database()
   AND routine_name = 'insert_list';

ROLLBACK;
