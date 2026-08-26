-- HELIOS-99030 DSARC gate test
-- Pure DDL: a CREATE TABLE is the cleanest case the gate must catch.
-- When this is pushed to a release* branch, OmniSync should classify it as
-- DDL, create a YouTrack DSARC ticket, mark the webhook event Pending, and
-- lock the Publish button until the ticket is approved.

CREATE TABLE dsarc_gate_test (
    id          serial PRIMARY KEY,
    label       varchar(100) NOT NULL,
    created_at  timestamptz NOT NULL DEFAULT now()
);
