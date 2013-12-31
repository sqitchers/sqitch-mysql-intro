-- Deploy insert_user
-- requires: users
-- requires: appuser

BEGIN;

DELIMITER //

CREATE PROCEDURE insert_user(
    nickname VARCHAR(512),
    password VARCHAR(512)
) SQL SECURITY DEFINER
BEGIN
    INSERT INTO users (nickname, password, timestamp)
    VALUES (nickname, md5(password), UTC_TIMESTAMP(6));
END
//

DELIMITER ;

GRANT EXECUTE ON PROCEDURE insert_user to flipr;

COMMIT;
