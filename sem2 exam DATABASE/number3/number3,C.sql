--tv series table
CREATE TABLE TVSeries (
    SeriesID INT PRIMARY KEY,
    Title VARCHAR(255),
    ReleaseDate DATE,
    Description TEXT
);
--SELECT * FROM  TVSeries;

--episodes table
CREATE TABLE Episodes (
    EpisodeID INT PRIMARY KEY,
    SeriesID INT,
    Title VARCHAR(255),
    AirDate DATE,
    FOREIGN KEY (SeriesID) REFERENCES TVSeries(SeriesID)
);

--actors table
CREATE TABLE Actors (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    Gender CHAR(1)
);


--directors table
CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY,
    Name VARCHAR(255),
    Nationality VARCHAR(50),
    ExperienceYears INT
);

