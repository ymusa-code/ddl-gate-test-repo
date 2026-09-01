-- HELIOS-99030 v3 e2e: SECOND DDL push (dedup test).
-- DSARC-3501 should already be open/unresolved from the first push. The gate's
-- FindOpenDsarcTicketAsync (now using #Unresolved) must find it, the live-state
-- guard must read Resolution (empty -> unresolved), and the gate must APPEND this
-- SQL as a comment on DSARC-3501 and reuse its id — NOT create DSARC-3502.
ALTER TABLE omnisync.e2e_ddl_test_v3
    ADD COLUMN updated_at TIMESTAMPTZ NOT NULL DEFAULT now();
