create database loginsystem;

CREATE TABLE Users (
    UserName varchar(255),
    Password varchar(255)
);

alter table Users
ADD CONSTRAINT PK_un
Primary KEY (Username) ;

CREATE TABLE Movies (
    MovieName varchar(255),
    AverageRating varchar(255),
    Review varchar(255),
    YearAdded datetime
);

CREATE TABLE UserMoviesWatched (
    UserName varchar(255),
    MovieName varchar(255),
    DateMovieWatched datetime
);

CREATE TABLE UserMoviesSaved (
    UserName varchar(255),
    MovieName varchar(255),
    DateMovieWatched datetime
);
