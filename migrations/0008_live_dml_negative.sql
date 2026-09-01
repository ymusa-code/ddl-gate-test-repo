-- HELIOS-99030 negative test: DML-only (no DDL keyword) must NOT trigger the gate.
-- Expect: no DSARC ticket created, dsarcState null on the row, Publish not blocked by DSARC.
UPDATE omnisync.dsarc_live_noop SET note = 'dml only' WHERE id = 1;
