-- Verify change_pass

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "change_pass" does not exist or is not up-to-date')
  FROM information_schema.routines
 WHERE routine_schema = database()
   AND routine_name = 'change_pass'
   AND routine_definition LIKE '%ENCRYPT(md5(oldpass), password)%';

ROLLBACK;
