-- HELIOS-99030 DSARC gate live happy-path test (third file)
-- Brand-new migration that exists on neither GitHub parent nor GitLab, so the 3-way
-- conflict check sees base=empty, ours=empty -> fast-tracks -> the gate fires and
-- (with a write-capable YouTrack token) creates a real DSARC ticket -> row Pending.
-- Pure DDL: CREATE TABLE is the cleanest case the gate must catch.

CREATE TABLE dsarc_gate_test_three (
    id          serial PRIMARY KEY,
    label       varchar(100) NOT NULL,
    created_at  timestamptz NOT NULL DEFAULT now()
);
