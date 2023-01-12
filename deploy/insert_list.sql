-- Deploy insert_list
-- requires: lists
-- requires: appuser

BEGIN;

DELIMITER //

CREATE FUNCTION insert_list(
    nickname    VARCHAR(512),
    name        VARCHAR(512),
    description TEXT
) RETURNS BIGINT DETERMINISTIC SQL SECURITY DEFINER
BEGIN
    INSERT INTO lists (nickname, name, description, created_at)
    VALUES (nickname, name, description, UTC_TIMESTAMP(6));
    RETURN LAST_INSERT_ID();
END;
//

DELIMITER ;

GRANT EXECUTE ON FUNCTION insert_list to flipr;

COMMIT;
