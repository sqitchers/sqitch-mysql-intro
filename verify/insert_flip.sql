-- Verify insert_flip

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Function "insert_flip" does not exist')
  FROM mysql.proc
 WHERE db = database()
   AND specific_name = 'insert_flip';

ROLLBACK;
