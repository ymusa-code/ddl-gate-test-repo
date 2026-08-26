-- HELIOS-99030 DSARC gate test (second file)
-- Brand-new migration file that exists on neither GitHub's parent commit nor GitLab,
-- so the 3-way conflict check sees base=empty, ours=empty -> no false conflict -> fast-track -> gate fires.
-- Pure DDL: CREATE TABLE is the cleanest case the gate must catch.

CREATE TABLE dsarc_gate_test_two (
    id          serial PRIMARY KEY,
    label       varchar(100) NOT NULL,
    created_at  timestamptz NOT NULL DEFAULT now()
);
