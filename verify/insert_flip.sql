-- Verify insert_flip

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Function "insert_flip" does not exist')
  FROM information_schema.routines
 WHERE routine_schema = database()
   AND routine_name = 'insert_flip';

ROLLBACK;
