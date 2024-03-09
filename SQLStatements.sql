create database loginsystem;

CREATE TABLE Users (
    UserID int primary key auto_increment,
    UserName varchar(255),
    Password varchar(255)
);

CREATE TABLE Movies (
	MovieID int primary key auto_increment,
    MovieName varchar(255),
    AverageRating varchar(255),
    Review varchar(255),
    YearAdded datetime
);



CREATE TABLE UserMoviesWatched (
	UserMovieWatchedID int primary key auto_increment,
    UserID varchar(255),
    MovieID varchar(255),
    DateMovieWatched datetime
);



alter table UserMoviesWatched
ADD CONSTRAINT FK_un2
FOREIGN KEY (UserID) REFERENCES Users (UserID);

alter table UserMoviesWatched
ADD CONSTRAINT FK_mn
FOREIGN KEY (MovieID) REFERENCES Movies (MovieID);


CREATE TABLE UserMoviesSaved (
	UserMovieSavedID int primary key auto_increment,
    UserID varchar(255),
    MovieID varchar(255),
    DateMovieSaved datetime
);



alter table UserMoviesSaved
ADD CONSTRAINT FK_un3
FOREIGN KEY (UserID) REFERENCES Users (UserID);

alter table UserMoviesSaved
ADD CONSTRAINT FK_mn2
FOREIGN KEY (MovieID) REFERENCES Movies (MovieID);




insert into users (UserID,UserName,Password)
values
(1,'BarryAllen', 'TheFlash!10'),
(2,'OliverQueen', 'GreenArrow!20'),
(3,'TonyStark', 'IronMan!30'),
(4,'ClarkKent', 'Superman!40'),
(5,'PeterParker', 'Spiderman!5'),
(6,'BruceWayne', 'Batman!14'),
(7,'CharlesXavier', 'ProfX!39'),
(8,'ScarletWitch', 'Witch!30'),
(9,'SteveRogers', 'CaptainAmerica!32'),
(10,'CarolDanvers', 'Mavel!13'),
(11,'NickFury', 'Leader!20'),
(12,'KaraZorEl', 'Supergirl!11'),
(13,'Tchalla', 'BlackPanther!17'),
(14,'StevenStrange', 'DrStrange!98'),
(15,'ClintBarton', 'HawkEye!19'),
(16,'RyanReynolds', 'GreenLantern!70'),
(17,'BruceBanner', 'Hulk!50'),
(18,'Logan', 'Wolverine!60'),
(19,'DianaPrince', 'WonderWoman!100'),
(20,'DickGrayson', 'Robin!10')

insert into movies (MovieName)
values
('The Wolf Of Wall Street'),
('Raiders Of The Lost Ark'),
('Speed'),
('The Matrix'),
('Once Upon A Time In Hollywood'),
('There Will Be Blood'),
('Singing In The Rain'),
('Goodfellas'),
('Bicyle Thieves'),
('The Dark Knight'),
('Senna'),
('Oppenheimer'),
('Kiss Kiss Bang Bang'),
('Gothika'),
('Inception'),
('Memento'),
('City Lights'),
('Jaws'),
('Star Wars'),
('Alien'),
('Pulp Fiction'),
('The Social Network'),
('Rservoir Dogs'),
('Lost In Translation'),
('Taxi Driver'),
('Modern Times'),
('Blade Runner'),
('Airplane'),
('Mad Max'),
('Brokeback Mountain'),
('The Blair Witch Project'),
('The General'),
('Eternal Sunshine Of The Spotless Mind'),
('Heat'),
('Gravity'),
('The Godfather'),
('Black Panther'),
('Bridesmaids'),
('Manchester By The Sea'),
('Oceans 11'),
('Parasite'),
('Moonlight'),
('La La Land'),
('Get Out'),
('Zodiac'),
('Gladiator'),
('No Country For Old Men'),
('Persepolis'),
('Paddington'),
('The Incredibles'),
('Ted')


insert into UserMoviesSaved (UserMovieSavedId,UserName,MovieName,DateMovieSaved)
values
(1,'BarryAllen', 'Jaws', NOW()),
(2,'BarryAllen', 'Heat', NOW()),
(3,'BarryAllen', 'Modern Times', NOW()),
(4,'BarryAllen', 'No Country For Old Men', NOW()),
(5,'BarryAllen', 'Ted', NOW()),
(6,'BarryAllen', 'Modern Times', NOW()),
(7,'BarryAllen', 'Eternal Sunshine Of The Spotless Mind', NOW()),
(8,'BarryAllen', 'Bridesmaids', NOW()),
(9,'StevenStrange', 'Jaws', NOW()),
(10,'StevenStrange', 'Heat', NOW()),
(11,'StevenStrange', 'Persepolis', NOW()),
(12,'StevenStrange', 'Airplane', NOW()),
(13,'StevenStrange', 'La La Land', NOW()),
(14,'StevenStrange', 'Rservoir Dogs', NOW()),
(15,'StevenStrange', 'Eternal Sunshine Of The Spotless Mind', NOW()),
(16,'StevenStrange', 'Moonlight', NOW()),
(17,'ScarletWitch', 'Get Out', NOW()),
(18,'ScarletWitch', 'Heat', NOW()),
(19,'ScarletWitch', 'Brokeback Mountain', NOW()),
(20,'ScarletWitch', 'Airplane', NOW()),
(21,'ScarletWitch', 'La La Land', NOW()),
(22,'ScarletWitch', 'Reservoir Dogs', NOW()),
(23,'ScarletWitch', 'The Blair Witch Project', NOW()),
(24,'ScarletWitch', 'Gravity', NOW()),
(25,'DianaPrince', 'La La Land', NOW()),
(26,'DianaPrince', 'Speed', NOW()),
(27,'DianaPrince', 'The Blair Witch Project', NOW()),
(28,'DianaPrince', 'Inception', NOW()),
(29,'NickFury', 'La La Land', NOW()),
(30,'NickFury', 'The Social Network', NOW()),
(31,'NickFury', 'The Blair Witch Project', NOW()),
(32,'NickFury', 'Mad Max', NOW())



insert into UserMoviesWatched (UserMovieWatchedId,UserName,MovieName,DateMovieWatched)
values
(1,'BarryAllen', 'Persepolis', NOW()),
(2,'BarryAllen', 'Airplane', NOW()),
(3,'BarryAllen', 'Moonlight', NOW()),
(4,'StevenStrange', 'The Incredibles', NOW()),
(5,'StevenStrange', 'Manchester By The Sea', NOW()),
(6,'StevenStrange', 'Star Wars', NOW()),
(7,'DickGrayson', 'Get Out', NOW()),
(8,'DickGrayson', 'Heat', NOW()),
(9,'DickGrayson', 'Memento', NOW()),
(10,'DickGrayson', 'Inception', NOW()),
(11,'DickGrayson', 'La La Land', NOW()),
(12,'DickGrayson', 'Reservoir Dogs', NOW()),
(13,'DickGrayson', 'The Blair Witch Project', NOW()),
(14,'DickGrayson', 'Gravity', NOW()),
(15,'TonyStark', 'La La Land', NOW()),
(16,'TonyStark', 'Speed', NOW()),
(17,'TonyStark', 'The Blair Witch Project', NOW()),
(18,'TonyStark', 'Inception', NOW()),
(19,'NickFury', 'Oceans 11', NOW()),
(20,'NickFury', 'Parasite', NOW()),
(21,'NickFury', 'Ted', NOW()),
(22,'NickFury', 'Paddington', NOW())


