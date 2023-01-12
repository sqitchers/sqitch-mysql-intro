-- Verify insert_user

BEGIN;

SELECT sqitch.checkit(COUNT(*), 'Procedure "insert_user" does not exist or is not up-to-date')
  FROM information_schema.routines
 WHERE routine_schema = database()
   AND routine_name = 'insert_user'
   AND routine_definition LIKE '%ENCRYPT(md5(password), md5(FLOOR(RAND() * 0xFFFFFFFF))%';

ROLLBACK;
