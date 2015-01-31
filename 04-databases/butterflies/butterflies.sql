CREATE TABLE butterflies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  family TEXT,
  image TEXT
);

ALTER TABLE butterflies ADD COLUMN plant_id INTEGER;
