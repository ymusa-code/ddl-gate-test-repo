// HELIOS-99030 Replit DSARC gate live test - drizzle config.
// Mirrors the real PMO Replit projects: out -> ./migrations, schema -> ./shared/schema.ts.
// OmniSync's ParseDrizzleConfig reads these literals (tolerant regex); defaults match these too.
import { defineConfig } from "drizzle-kit";

export default defineConfig({
  out: "./migrations",
  schema: "./shared/schema.ts",
  dialect: "postgresql",
});
