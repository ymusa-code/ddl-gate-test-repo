-- HELIOS-99030 live re-test on devint (new build): DDL keyword triggers the gate.
-- DROP ... IF EXISTS on a non-existent table = no-op even if executed. Nothing to clean up.
DROP TABLE IF EXISTS omnisync.dsarc_live_noop;
