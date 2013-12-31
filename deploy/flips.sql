-- Deploy flips
-- requires: appuser
-- requires: users

BEGIN;

CREATE TABLE flips (
    id        BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nickname  VARCHAR(512) NOT NULL REFERENCES users(nickname),
    body      VARCHAR(180) NOT NULL,
    timestamp DATETIME(6)  NOT NULL
);

GRANT SELECT ON TABLE flips TO flipr;

COMMIT;
