-- HELIOS-99030 Replit DSARC gate live test (retrigger) - a second DDL migration.
-- Added as a NEW file (status=added) so the gatherer picks it up cleanly with no merge
-- complexity against the 0001 file India already synced. The classifier flags ALTER TABLE
-- as DDL -> on a release* target the v2 gate creates a DSARC ticket and locks Publish.
ALTER TABLE public.users ADD COLUMN phone varchar(20);
