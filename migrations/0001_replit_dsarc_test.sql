-- HELIOS-99030 Replit DSARC gate live test - a DDL migration.
-- The classifier must flag this as DDL (ALTER TABLE) -> on a release* target the gate creates
-- a DSARC ticket and stamps the webhook event Pending, locking Publish until Resolution=Done.
ALTER TABLE public.users ADD COLUMN email varchar(255);
