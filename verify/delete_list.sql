-- Verify delete_list

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "delete_list" does not exist')
  FROM mysql.proc
 WHERE db = database()
   AND specific_name = 'delete_list';

ROLLBACK;
