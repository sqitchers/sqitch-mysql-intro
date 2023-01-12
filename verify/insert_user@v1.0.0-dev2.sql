-- Verify insert_user

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "insert_user" does not exist')
  FROM information_schema.routines
 WHERE routine_schema = database()
   AND routine_name = 'insert_user';

ROLLBACK;
