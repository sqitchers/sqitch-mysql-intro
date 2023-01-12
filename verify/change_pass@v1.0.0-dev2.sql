-- Verify change_pass

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "change_pass" does not exist')
 FROM information_schema.routines
 WHERE routine_schema = database()
   AND routine_name = 'change_pass';

ROLLBACK;
