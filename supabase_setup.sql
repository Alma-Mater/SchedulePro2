-- ============================================================
-- SchedulePro - Supabase Setup
-- Run this in your Supabase SQL Editor (one time only)
-- ============================================================

-- Key-value state table: each row stores one section of app data as JSONB
CREATE TABLE IF NOT EXISTS schedulepro_state (
    key TEXT PRIMARY KEY,
    value JSONB NOT NULL DEFAULT '{}',
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Allow all users (anon key) to read and write
ALTER TABLE schedulepro_state ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow public access" ON schedulepro_state
    FOR ALL USING (true) WITH CHECK (true);

-- Enable Realtime so all browsers get live updates
ALTER PUBLICATION supabase_realtime ADD TABLE schedulepro_state;
