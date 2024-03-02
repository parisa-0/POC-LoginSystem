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

alter table Movies
ADD CONSTRAINT PK_mn
Primary KEY (MovieName) ;

alter table UserMoviesWatched
ADD CONSTRAINT PK_un
Primary KEY (UserName) ;

alter table UserMoviesSaved
ADD CONSTRAINT PK_un
Primary KEY (UserName) ;

alter table UserMoviesSaved
ADD CONSTRAINT FK_un2
FOREIGN KEY (UserName) REFERENCES Users (UserName);

alter table UserMoviesWatched
ADD CONSTRAINT PK_un
Primary KEY (UserName) ;

alter table UserMoviesWatched
ADD CONSTRAINT FK_un
FOREIGN KEY (UserName) REFERENCES Users (UserName);

alter table UserMoviesSaved
ADD CONSTRAINT FK_un
FOREIGN KEY (UserName) REFERENCES Users (UserName);

insert into users (UserName,Password)
values
('BarryAllen', 'TheFlash!10'),
('OliverQueen', 'GreenArrow!20'),
('TonyStark', 'IronMan!30'),
('ClarkKent', 'Superman!40'),
('PeterParker', 'Spiderman!5'),
('BruceWayne', 'Batman!14'),
('CharlesXavier', 'ProfX!39'),
('ScarletWitch', 'Witch!30'),
('SteveRogers', 'CaptainAmerica!32'),
('CarolDanvers', 'Mavel!13'),
('NickFury', 'Leader!20'),
('KaraZorEl', 'Supergirl!11'),
('Tchalla', 'BlackPanther!17'),
('StevenStrange', 'DrStrange!98'),
('ClintBarton', 'HawkEye!19'),
('RyanReynolds', 'GreenLantern!70'),
('BruceBanner', 'Hulk!50'),
('Logan', 'Wolverine!60'),
('DianaPrince', 'WonderWoman!100'),
('DickGrayson', 'Robin!10')

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



