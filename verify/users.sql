-- Verify users

BEGIN;

SELECT nickname, password, timestamp
  FROM users
 WHERE 0;

ROLLBACK;
