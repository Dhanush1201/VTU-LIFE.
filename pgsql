-- Create table to store subjects and file details
CREATE TABLE subject_files (
  id SERIAL PRIMARY KEY,
  subject_name TEXT NOT NULL,
  cycle TEXT CHECK (cycle IN ('Physics', 'Chemistry')),
  file_type TEXT CHECK (file_type IN ('Notes', 'Question Paper')),
  file_name TEXT NOT NULL,         -- e.g., 'BMATS101set1.pdf'
  file_url TEXT NOT NULL           -- e.g., 'papers/BMATS101set1.pdf'
);

-- Sample data for Physics Cycle (Notes)
INSERT INTO subject_files (subject_name, cycle, file_type, file_name, file_url) VALUES
('Mathematics-1', 'Physics', 'Notes', 'maths1_notes.pdf', 'papers/maths1_notes.pdf'),
('Applied Physics', 'Physics', 'Notes', 'applied_physics.pdf', 'papers/applied_physics.pdf');

-- Sample data for Chemistry Cycle (Notes)
INSERT INTO subject_files (subject_name, cycle, file_type, file_name, file_url) VALUES
('Mathematics-2', 'Chemistry', 'Notes', 'maths2_notes.pdf', 'papers/maths2_notes.pdf'),
('Applied Chemistry', 'Chemistry', 'Notes', 'applied_chemistry.pdf', 'papers/applied_chemistry.pdf');

-- Sample data for Question Paper
INSERT INTO subject_files (subject_name, cycle, file_type, file_name, file_url) VALUES
('Mathematics-1', 'Physics', 'Question Paper', 'BMATS101set1.pdf', 'papers/BMATS101set1.pdf');
