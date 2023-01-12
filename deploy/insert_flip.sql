-- Deploy insert_flip
-- requires: flips
-- requires: appuser

BEGIN;

DELIMITER //

CREATE FUNCTION insert_flip(
    nickname VARCHAR(512),
    body     VARCHAR(180)
) RETURNS BIGINT DETERMINISTIC SQL SECURITY DEFINER
BEGIN
    INSERT INTO flips (nickname, body, timestamp)
    VALUES (nickname, body, UTC_TIMESTAMP(6));
    RETURN LAST_INSERT_ID();
END;
//

DELIMITER ;

GRANT EXECUTE ON FUNCTION insert_flip to flipr;

COMMIT;
