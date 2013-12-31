-- Verify lists

BEGIN;

SELECT id, nickname, name, description, created_at
  FROM lists;

ROLLBACK;
