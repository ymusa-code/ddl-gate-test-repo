-- DEMO: structural DDL pushed to a release* branch -> OmniSync auto-files a DSARC review ticket.
-- DROP ... IF EXISTS on a non-existent table = no-op even if executed. Nothing to clean up.
DROP TABLE IF EXISTS omnisync.dsarc_demo_noop;
