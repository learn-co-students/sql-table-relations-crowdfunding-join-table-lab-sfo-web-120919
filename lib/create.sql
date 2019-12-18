CREATE TABLE projects (
  id INTEGER PRIMARY KEY,
  title VARCHAR, 
  category VARCHAR, 
  funding_goal INTEGER, 
  start_date VARCHAR, 
  end_date VARCHAR
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name VARCHAR, 
  age INTEGER
);

CREATE TABLE pledges (
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);