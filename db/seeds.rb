# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
require "sqlite3"
require 'csv'

db = SQLite3::Database.new "db/development.sqlite"

#YEAR,GoogleKnowlege_Occupation,Show,Group,Raw_Guest_List
# Create a database
rows = db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS guests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER,
    occupation TEXT,
    date TEXT,
    category TEXT,
    name TEXT
  );
SQL

csv = File.read("db/daily_show_guests.csv")

CSV.parse(csv, headers: true) do |row|
  db.execute("INSERT INTO guests (year, occupation, date, category, name) values ( ?, ?, ?, ?, ? )", row.fields)
end

db.execute("SELECT * FROM guests")