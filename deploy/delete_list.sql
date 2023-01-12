-- Deploy delete_list
-- requires: lists
-- requires: appuser

BEGIN;

DELIMITER //

CREATE FUNCTION delete_list(
    list_id BIGINT
) RETURNS BIGINT DETERMINISTIC SQL SECURITY DEFINER
BEGIN
    DELETE FROM lists WHERE id = list_id;
    RETURN ROW_COUNT();
END;
//

DELIMITER ;

GRANT EXECUTE ON FUNCTION delete_list to flipr;

COMMIT;
