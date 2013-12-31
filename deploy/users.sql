-- Deploy users
-- requires: appuser

BEGIN;

CREATE TABLE users (
    nickname  VARCHAR(512) PRIMARY KEY,
    password  VARCHAR(512) NOT NULL,
    timestamp DATETIME(6)  NOT NULL
);

GRANT SELECT ON TABLE users TO flipr;

COMMIT;
