-- Verify insert_list

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "insert_list" does not exist')
  FROM mysql.proc
 WHERE db = database()
   AND specific_name = 'insert_list';

ROLLBACK;
