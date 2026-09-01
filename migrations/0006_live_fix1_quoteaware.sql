-- HELIOS-99030 fix #1 (the CRITICAL bypass test): /* and -- INSIDE string literals
-- must NOT mask the real DDL in between.
--
-- Old naive-regex build: BlockCommentRegex /\*.*?\*/ would match from the /* inside
-- string 1 across to the */ inside string 3, stripping the ALTER in the middle ->
-- file classified as DML -> UNGATED (no ticket, Publish not locked). That is the bypass.
--
-- Fixed quote-aware build: StripComments tracks '...' literals, so the /* and -- inside
-- the strings are preserved as literal text and the ALTER is seen -> classified DDL ->
-- ticket created + Publish locked. This file MUST produce a DSARC ticket on devint.
INSERT INTO omnisync.dsarc_live_noop (note) VALUES ('marker /* start');
ALTER TABLE omnisync.dsarc_live_noop ADD COLUMN backdoor TEXT;
INSERT INTO omnisync.dsarc_live_noop (note) VALUES ('end */ marker');
