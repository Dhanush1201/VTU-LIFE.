CREATE TABLE subjects (
  id SERIAL PRIMARY KEY,
  cycle VARCHAR(50), -- 'physics' or 'chemistry'
  subject_name TEXT NOT NULL,
  notes_url TEXT
);
