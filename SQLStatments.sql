create database Users;

CREATE TABLE Users (
    UserName varchar(255),
    Password varchar(255)
);

alter table Users
ADD CONSTRAINT PK_un
Primary KEY (Username) ;
