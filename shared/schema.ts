// HELIOS-99030 Replit DSARC gate live test - the handwritten "recipe".
// drizzle-kit push executes THIS file against the live DB (the executor). The gate classifies
// migrations/*.sql (the generated "printed sheets"). The consistency guard guarantees a .sql
// exists whenever this file changes. This is the baseline schema state for the test repo.
import { pgTable, serial, varchar, timestamp } from "drizzle-orm/pg-core";

export const users = pgTable("users", {
  id: serial("id").primaryKey(),
  username: varchar("username", { length: 255 }).notNull(),
  createdAt: timestamp("created_at").defaultNow().notNull(),
});
