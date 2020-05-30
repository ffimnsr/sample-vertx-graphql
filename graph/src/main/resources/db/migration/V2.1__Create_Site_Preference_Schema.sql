CREATE TABLE IF NOT EXISTS "site_preferences" (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NULL DEFAULT NULL,
  opt_in_marketing BIT NULL,
  opt_in_usage_statistics BIT NULL,
  opt_in_experimental_features BIT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL,
  CONSTRAINT "site_preferences_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user_clues" ("id") ON UPDATE NO ACTION ON DELETE SET NULL
);

CREATE INDEX "site_preferences_index" ON "site_preferences" ("user_id");
