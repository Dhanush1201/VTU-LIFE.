-- Create table for storing subjects
CREATE TABLE subjects (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  cycle TEXT CHECK (cycle IN ('Physics', 'Chemistry')),
  type TEXT CHECK (type IN ('Notes', 'Question Paper')),
  year INT, -- only for question papers
  file_url TEXT -- optional, for linking to files
);

-- Insert sample data
INSERT INTO subjects (name, cycle, type)
VALUES 
('Applied Physics for CSE Stream', 'Physics', 'Notes'),
('Mathematics-1 for CSE Stream', 'Physics', 'Notes'),
('Introduction to Mechanical Engineering', 'Physics', 'Notes'),
('Introduction to Internet of Things', 'Physics', 'Notes'),
('Principle of Programming using C', 'Physics', 'Notes'),
('Innovation and Design Thinking', 'Physics', 'Notes'),
('Communicative English', 'Physics', 'Notes'),
('Samsruthika Kannada', 'Physics', 'Notes'),

('Applied Chemistry for CSE Stream', 'Chemistry', 'Notes'),
('Mathematics-2 for CSE Stream', 'Chemistry', 'Notes'),
('Introduction to Electronics & Communication', 'Chemistry', 'Notes'),
('Introduction to C++ Programming', 'Chemistry', 'Notes'),
('Introduction to Python Programming', 'Chemistry', 'Notes'),
('Computer Aided Engineering Drawing', 'Chemistry', 'Notes'),
('Scientific Foundation of Health', 'Chemistry', 'Notes'),
('Professional Writing Skills in English', 'Chemistry', 'Notes'),
('Indian Constitution', 'Chemistry', 'Notes'),

('Physics', 'Physics', 'Question Paper', 2023),
('Chemistry', 'Chemistry', 'Question Paper', 2022);
