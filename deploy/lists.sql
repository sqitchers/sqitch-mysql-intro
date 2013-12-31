-- Deploy lists
-- requires: appuser
-- requires: users

BEGIN;

CREATE TABLE lists (
    id           BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nickname     VARCHAR(512)    NOT NULL REFERENCES users(nickname),
    name         VARCHAR(512)    NOT NULL,
    description  TEXT            NOT NULL,
    created_at   DATETIME(6)     NOT NULL
);

GRANT SELECT ON TABLE lists TO flipr;

COMMIT;
