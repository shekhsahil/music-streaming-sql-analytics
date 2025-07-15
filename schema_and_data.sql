-- USERS TABLE
CREATE TABLE USERS (
	USER_ID SERIAL PRIMARY KEY,
	NAME VARCHAR(100),
	CITY VARCHAR(100),
	SIGNUP_DATE DATE
);

-- ARTISTS TABLE
CREATE TABLE ARTISTS (
	ARTIST_ID SERIAL PRIMARY KEY,
	ARTIST_NAME VARCHAR(100),
	GENRE VARCHAR(50)
);

-- TRACKS TABLE
CREATE TABLE TRACKS (
	TRACK_ID SERIAL PRIMARY KEY,
	TITLE VARCHAR(100),
	ARTIST_ID INT REFERENCES ARTISTS (ARTIST_ID),
	DURATION_SEC INT
);

-- LISTENING HISTORY TABLE
CREATE TABLE LISTENING_HISTORY (
	LISTEN_ID SERIAL PRIMARY KEY,
	USER_ID INT REFERENCES USERS (USER_ID),
	TRACK_ID INT REFERENCES TRACKS (TRACK_ID),
	LISTEN_DATE DATE,
	DEVICE VARCHAR(50),
	PLAY_DURATION_SEC INT -- optional: for skip detection
);

-- INSERTING USER DETAILS INTO USER TABLE
INSERT INTO
	USERS (NAME, CITY, SIGNUP_DATE)
VALUES
	('Emma', 'New York', '2024-01-05'),
	('Liam', 'London', '2024-02-10'),
	('Olivia', 'Toronto', '2024-03-12'),
	('Noah', 'Berlin', '2024-01-20'),
	('Ava', 'Sydney', '2024-02-28'),
	('Ethan', 'Los Angeles', '2024-03-01'),
	('Sophia', 'Paris', '2024-01-18'),
	('Mason', 'Tokyo', '2024-03-05'),
	('Isabella', 'Chicago', '2024-02-09'),
	('Logan', 'Mumbai', '2024-01-25'),
	('Mia', 'Seoul', '2024-02-14'),
	('Lucas', 'Dubai', '2024-03-07'),
	('Charlotte', 'Delhi', '2024-02-22'),
	('Jackson', 'São Paulo', '2024-03-03'),
	('Amelia', 'Istanbul', '2024-01-29'),
	('Aiden', 'Rome', '2024-02-05'),
	('Harper', 'Bangkok', '2024-03-11'),
	('Elijah', 'Kolkata', '2024-01-30'),
	('Evelyn', 'Barcelona', '2024-02-25'),
	('James', 'Toronto', '2024-03-09'),
	('Abigail', 'Berlin', '2024-01-17'),
	('Benjamin', 'Jakarta', '2024-02-12'),
	('Emily', 'New York', '2024-03-14'),
	('Henry', 'Moscow', '2024-01-15'),
	('Elizabeth', 'Cape Town', '2024-02-20'),
	('Sebastian', 'Lagos', '2024-03-06'),
	('Sofia', 'Amsterdam', '2024-01-19'),
	('Alexander', 'Beijing', '2024-02-01'),
	('Avery', 'Karachi', '2024-03-10'),
	('Michael', 'Buenos Aires', '2024-02-03'),
	('Ella', 'Rio de Janeiro', '2024-01-23'),
	('Daniel', 'Cairo', '2024-03-08'),
	('Scarlett', 'Paris', '2024-02-16'),
	('Matthew', 'Tokyo', '2024-01-21'),
	('Luna', 'Delhi', '2024-02-07'),
	('Jackson', 'Bangkok', '2024-03-04'),
	('Aria', 'Chennai', '2024-01-27'),
	('David', 'Lima', '2024-02-11'),
	('Penelope', 'Toronto', '2024-01-12'),
	('Joseph', 'Dubai', '2024-02-18'),
	('Chloe', 'Mumbai', '2024-03-02'),
	('Samuel', 'Chicago', '2024-01-28'),
	('Grace', 'Berlin', '2024-02-04'),
	('Carter', 'Barcelona', '2024-01-22'),
	('Victoria', 'Madrid', '2024-02-23'),
	('Wyatt', 'Kolkata', '2024-03-13'),
	('Riley', 'Istanbul', '2024-01-26'),
	('Jayden', 'London', '2024-02-13'),
	('Nora', 'New York', '2024-03-15'),
	('Dylan', 'Rome', '2024-01-24');

-- INSERTING ARTISTS DETAILS INTO ARTISTS TABLE
INSERT INTO
	ARTISTS (ARTIST_NAME, GENRE)
VALUES
	('Taylor Swift', 'Pop'),
	('Drake', 'Hip-Hop'),
	('Billie Eilish', 'Alternative'),
	('The Weeknd', 'R&B'),
	('Ed Sheeran', 'Pop'),
	('Ariana Grande', 'Pop'),
	('Kanye West', 'Hip-Hop'),
	('BTS', 'K-Pop'),
	('Coldplay', 'Rock'),
	('Bruno Mars', 'R&B'),
	('Lady Gaga', 'Pop'),
	('Eminem', 'Rap'),
	('Justin Bieber', 'Pop'),
	('Imagine Dragons', 'Alternative'),
	('Doja Cat', 'Pop'),
	('Dua Lipa', 'Pop'),
	('Travis Scott', 'Hip-Hop'),
	('Shawn Mendes', 'Pop'),
	('Post Malone', 'Hip-Hop'),
	('Sia', 'Pop');

-- INSERTING TRACKS DETAILS INTO TRACKS TABLE
INSERT INTO
	TRACKS (TITLE, ARTIST_ID, DURATION_SEC)
VALUES
	('Blank Space', 1, 231),
	('Shake It Off', 1, 219),
	('God''s Plan', 2, 198),
	('One Dance', 2, 173),
	('Bad Guy', 3, 194),
	('Lovely', 3, 200),
	('Blinding Lights', 4, 200),
	('Save Your Tears', 4, 215),
	('Perfect', 5, 263),
	('Shape of You', 5, 240),
	('7 Rings', 6, 195),
	('Into You', 6, 210),
	('Stronger', 7, 250),
	('Heartless', 7, 221),
	('Dynamite', 8, 199),
	('Butter', 8, 205),
	('Yellow', 9, 260),
	('Paradise', 9, 250),
	('Uptown Funk', 10, 270),
	('That’s What I Like', 10, 210),
	('Poker Face', 11, 232),
	('Rain on Me', 11, 218),
	('Lose Yourself', 12, 276),
	('Without Me', 12, 230),
	('Peaches', 13, 198),
	('Stay', 13, 209),
	('Believer', 14, 204),
	('Thunder', 14, 180),
	('Woman', 15, 188),
	('Say So', 15, 192),
	('Levitating', 16, 203),
	('New Rules', 16, 207),
	('Goosebumps', 17, 220),
	('Sicko Mode', 17, 312),
	('Treat You Better', 18, 205),
	('Senorita', 18, 206),
	('Circles', 19, 215),
	('Sunflower', 19, 200),
	('Chandelier', 20, 216),
	('Cheap Thrills', 20, 220);

---- INSERTING LISTENING HISTORY DETAILS INTO LISTENING HISTORY TABLE
INSERT INTO
	LISTENING_HISTORY (
		USER_ID,
		TRACK_ID,
		LISTEN_DATE,
		DEVICE,
		PLAY_DURATION_SEC
	)
VALUES
	(1, 1, '2024-06-01', 'iPhone', 231),
	(2, 3, '2024-06-01', 'Android', 150),
	(3, 5, '2024-06-02', 'Laptop', 263),
	(4, 7, '2024-06-02', 'iPhone', 100),
	(5, 10, '2024-06-03', 'Laptop', 240),
	(6, 12, '2024-06-03', 'Android', 200),
	(7, 15, '2024-06-04', 'iPhone', 199),
	(8, 18, '2024-06-04', 'Laptop', 250),
	(9, 20, '2024-06-05', 'Tablet', 210),
	(10, 22, '2024-06-05', 'Android', 218),
	(11, 25, '2024-06-06', 'iPhone', 198),
	(12, 27, '2024-06-06', 'Laptop', 204),
	(13, 29, '2024-06-07', 'Android', 192),
	(14, 30, '2024-06-07', 'Laptop', 203),
	(15, 33, '2024-06-08', 'iPhone', 220),
	(16, 36, '2024-06-08', 'Tablet', 205),
	(17, 38, '2024-06-09', 'Android', 215),
	(18, 40, '2024-06-09', 'Laptop', 216),
	(19, 2, '2024-06-10', 'Android', 198),
	(20, 4, '2024-06-10', 'Laptop', 200),
	(21, 6, '2024-06-11', 'iPhone', 219),
	(22, 8, '2024-06-11', 'Tablet', 215),
	(23, 9, '2024-06-12', 'Android', 263),
	(24, 11, '2024-06-12', 'Laptop', 210),
	(25, 13, '2024-06-13', 'iPhone', 250),
	(26, 14, '2024-06-13', 'Android', 173),
	(27, 16, '2024-06-14', 'Tablet', 205),
	(28, 17, '2024-06-14', 'Laptop', 250),
	(29, 19, '2024-06-15', 'iPhone', 270),
	(30, 21, '2024-06-15', 'Android', 232),
	(31, 23, '2024-06-16', 'Laptop', 276),
	(32, 24, '2024-06-16', 'iPhone', 230),
	(33, 26, '2024-06-17', 'Android', 209),
	(34, 28, '2024-06-17', 'Laptop', 180),
	(35, 31, '2024-06-18', 'Tablet', 207),
	(36, 32, '2024-06-18', 'iPhone', 312),
	(37, 34, '2024-06-19', 'Android', 206),
	(38, 35, '2024-06-19', 'Laptop', 215),
	(39, 37, '2024-06-20', 'iPhone', 200),
	(40, 39, '2024-06-20', 'Tablet', 220),
	(41, 1, '2024-06-21', 'Laptop', 231),
	(42, 3, '2024-06-21', 'Android', 194),
	(43, 5, '2024-06-22', 'iPhone', 263),
	(44, 7, '2024-06-22', 'Laptop', 173),
	(45, 10, '2024-06-23', 'Tablet', 240),
	(46, 13, '2024-06-23', 'Android', 198),
	(47, 16, '2024-06-24', 'iPhone', 205),
	(48, 19, '2024-06-24', 'Laptop', 215),
	(49, 22, '2024-06-25', 'Tablet', 218),
	(50, 25, '2024-06-25', 'Android', 198);
