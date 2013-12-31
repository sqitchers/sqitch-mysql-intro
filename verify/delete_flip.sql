-- Verify delete_flip

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Function "delete_flip" does not exist')
  FROM mysql.proc
 WHERE db = database()
   AND specific_name = 'delete_flip';

ROLLBACK;
