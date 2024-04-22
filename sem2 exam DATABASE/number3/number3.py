'Identify all the entities in the above scenario'
# TV Series
# Episodes
# Actors
# Directors
# Transmission Occasions


'Briefly Explain the following and give examples to illustrate'
'primary key'
# A primary key is a unique identifier for each record in a table.
# CREATE TABLE Students (
#     StudentID INT PRIMARY KEY,
#     Name VARCHAR(255),
#     Age INT
# );

'foreign key'
# A foreign key is a column or a set of columns in a table that establishes a link between data
# in two tables
# CREATE TABLE Courses (
#     CourseID INT PRIMARY KEY,
#     CourseName VARCHAR(255),
#     StudentID INT,
#     FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
# );
