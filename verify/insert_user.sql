-- Verify insert_user

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "insert_user" does not exist or is not up-to-date')
  FROM mysql.proc
 WHERE db = database()
   AND specific_name = 'insert_user'
   AND body_utf8 LIKE '%ENCRYPT(md5(password), md5(FLOOR(RAND() * 0xFFFFFFFF))%';

ROLLBACK;
