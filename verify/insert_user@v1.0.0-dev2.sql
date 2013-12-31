-- Verify insert_user

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "insert_user" does not exist')
  FROM mysql.proc
 WHERE db = database()
   AND specific_name = 'insert_user';

ROLLBACK;
