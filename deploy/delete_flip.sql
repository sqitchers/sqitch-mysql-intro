-- Deploy delete_flip
-- requires: flips
-- requires: appuser

BEGIN;

DELIMITER //

CREATE FUNCTION delete_flip(
    flip_id BIGINT
) RETURNS INTEGER SQL SECURITY DEFINER
BEGIN
    DELETE FROM flips WHERE id = flip_id;
    RETURN ROW_COUNT();
END;
//

DELIMITER ;

GRANT EXECUTE ON FUNCTION delete_flip to flipr;

COMMIT;
