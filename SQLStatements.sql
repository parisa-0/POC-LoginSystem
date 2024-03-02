create database loginsystem;

CREATE TABLE Users (
    UserID varchar(255),
    UserName varchar(255),
    Password varchar(255)
);

alter table Users
ADD CONSTRAINT PK_uid
Primary KEY (UserID) ;

CREATE TABLE Movies (
	MovieID varchar(255),
    MovieName varchar(255),
    AverageRating varchar(255),
    Review varchar(255),
    YearAdded datetime
);

alter table Movies
ADD CONSTRAINT PK_mid
Primary KEY (MovieID) ;

CREATE TABLE UserMoviesWatched (
	UserMovieWatchedID varchar(255),
    UserID varchar(255),
    MovieID varchar(255),
    UserName varchar(255),
    MovieName varchar(255),
    DateMovieWatched datetime
);

alter table UserMoviesWatched
ADD CONSTRAINT PK_umw
Primary KEY (UserMovieWatchedID) ;

alter table UserMoviesWatched
ADD CONSTRAINT FK_un2
FOREIGN KEY (UserID) REFERENCES Users (UserID);

alter table UserMoviesWatched
ADD CONSTRAINT FK_mn
FOREIGN KEY (MovieID) REFERENCES Movies (MovieID);


CREATE TABLE UserMoviesSaved (
	UserMovieSavedID varchar(255),
    UserID varchar(255),
    MovieID varchar(255),
    UserName varchar(255),
    MovieName varchar(255),
    DateMovieSaved datetime
);

alter table UserMoviesSaved
ADD CONSTRAINT PK_ums
Primary KEY (UserMovieSAvedID) ;

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

insert into movies (MovieID,MovieName)
values
(1,'The Wolf Of Wall Street'),
(2,'Raiders Of The Lost Ark'),
(3,'Speed'),
(4,'The Matrix'),
(5,'Once Upon A Time In Hollywood'),
(6,'There Will Be Blood'),
(7,'Singing In The Rain'),
(8,'Goodfellas'),
(9,'Bicyle Thieves'),
(10,'The Dark Knight'),
(11,'Senna'),
(12,'Oppenheimer'),
(13,'Kiss Kiss Bang Bang'),
(14,'Gothika'),
(15,'Inception'),
(16,'Memento'),
(17,'City Lights'),
(18,'Jaws'),
(19,'Star Wars'),
(20,'Alien'),
(21,'Pulp Fiction'),
(22,'The Social Network'),
(23,'Rservoir Dogs'),
(24,'Lost In Translation'),
(25,'Taxi Driver'),
(26,'Modern Times'),
(27,'Blade Runner'),
(28,'Airplane'),
(29,'Mad Max'),
(30,'Brokeback Mountain'),
(31,'The Blair Witch Project'),
(32,'The General'),
(33,'Eternal Sunshine Of The Spotless Mind'),
(34,'Heat'),
(35,'Gravity'),
(36,'The Godfather'),
(37,'Black Panther'),
(38,'Bridesmaids'),
(39,'Manchester By The Sea'),
(40,'Oceans 11'),
(41,'Parasite'),
(42,'Moonlight'),
(43,'La La Land'),
(44,'Get Out'),
(45,'Zodiac'),
(46,'Gladiator'),
(47,'No Country For Old Men'),
(48,'Persepolis'),
(49,'Paddington'),
(50,'The Incredibles'),
(51,'Ted')


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


