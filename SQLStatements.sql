create database loginsystem;

CREATE TABLE Users (
    UserID int primary key auto_increment,
    UserName varchar(255),
    Password varchar(255)
);

