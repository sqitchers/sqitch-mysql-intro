-- Verify change_pass

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "change_pass" does not exist or is not up-to-date')
  FROM mysql.proc
 WHERE db = database()
   AND specific_name = 'change_pass'
   AND body_utf8 LIKE '%ENCRYPT(md5(oldpass), password)%';

ROLLBACK;
