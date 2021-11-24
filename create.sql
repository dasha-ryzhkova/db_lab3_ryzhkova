-- Create Podcasts table


CREATE TABLE Podcasts
(
  pod_id           char(10)        NOT NULL,
  pod_name         VARCHAR(50)     NOT NULL,
  genre_id     	   char(50)        NOT NULL,
  country_id  	   char(50)        NOT NULL,
  author_id    	   char(50)        NOT NULL,
  viewers_quantity int                 NULL,
  rating           decimal(8,2)        NULL 
  
);

-- Create Genre table

CREATE TABLE Genres
(
  genre_id     	   char(50)        NOT NULL,
  genre_name  	   VARCHAR(50)     NOT NULL

);

-- Create Countries table

CREATE TABLE Countries
(
  country_id  	       char(50)        NOT NULL,
  country_name    	   VARCHAR(50)     NOT NULL
  
);

-- Create Author table

CREATE TABLE Authors
(
  author_id    	       char(50)        NOT NULL,
  author_name    	   VARCHAR(50)     NOT NULL

);

-- Define primary keys

ALTER TABLE Podcasts ADD CONSTRAINT PK_Podcasts PRIMARY KEY (pod_id);
ALTER TABLE Genres ADD CONSTRAINT PK_Genres PRIMARY KEY (genre_id);
ALTER TABLE Countries ADD CONSTRAINT PK_Countries PRIMARY KEY (country_id);
ALTER TABLE Authors ADD CONSTRAINT PK_Authors PRIMARY KEY (author_id);

-- Define foreign keys

ALTER TABLE Podcasts
ADD CONSTRAINT FK_Podcasts_Genres FOREIGN KEY (genre_id) REFERENCES Genres (genre_id);
ALTER TABLE Podcasts
ADD CONSTRAINT FK_Podcasts_Countries FOREIGN KEY (country_id) REFERENCES Countries (country_id);
ALTER TABLE Podcasts
ADD CONSTRAINT FK_Podcasts_Authors FOREIGN KEY (author_id) REFERENCES Authors (author_id);