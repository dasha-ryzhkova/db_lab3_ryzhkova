-- Populate Genres table

INSERT INTO Genres(genre_id, genre_name) 
VALUES('2000000001', 'Technology'),
      ('2000000002', 'Business'),
	  ('2000000003', 'Management'),
	  ('2000000004', 'Politics'),
	  ('2000000005', 'Health'),
	  ('2000000006', 'Music'),
	  ('2000000007', 'Arts'),
	  ('2000000008', 'Comedy');

-- Populate Countries table

INSERT INTO Countries(country_id, country_name)
VALUES('001', 'United Kingdom'),
      ('002', 'Canada'),
	  ('003', 'USA'),
	  ('004', 'Denmark'),
	  ('005', 'Germany'),
	  ('006', 'France'),
	  ('007', 'Sweden'),
	  ('008', 'Spain'),
	  ('009', 'Netherlands');


-- Populate Authors table

INSERT INTO Authors(author_id, author_name)
VALUES('11111', 'Practical Ecommerce'),
      ('11112', 'Telerik'),
	  ('11113', 'Randy Andrews'),
	  ('11114', 'Brian Fanzo'),
	  ('11115', 'Daniel Newman'),
	  ('11116', 'Leo Laporte'),
	  ('11117', 'Ross Morrone'),
	  ('11118', 'Johnathan Mosen'),
	  ('11119', 'Dan Kendall'),
	  ('11110', 'George Jones'),
	  ('11121', 'Greg Ferro');
	  
-- Populate Podcasts table

INSERT INTO Podcasts(pod_id, pod_name, genre_id, country_id, author_id, viewers_quantity, rating)
VALUES('1000000001', 'Ecommerce Conversations', '2000000001', '003', '11111', '1188', '4.46133'),
	  ('1000000002', 'Eat Sleep Code Podcast', '2000000001', '001', '11112', '1154', '4.69982'),
	  ('1000000003', 'SoundtrackAlley', '2000000001', '002', '11113', '12303', '4.8693'),
	  ('1000000004', 'Sermons from Living Water Dayton', '2000000001', '003', '11114', '1335', '4.79551'),
	  ('1000000005', 'Two Guys Talking Wine', '2000000007', '004', '11115', '44', '3.06818'),
	  ('1000000006', 'Two Ewes Fiber Adventures', '2000000007', '006', '11116', '3434', '4.87653'),
	  ('1000000007', 'Open Roll with Jurgen Rudolph', '2000000003', '003', '11117', '1050', '3.59259'),
	  ('1000000008', 'On The Record', '2000000008', '008', '11118', '1131', '4.84084'),
	  ('1000000009', '902 BrewCast', '2000000005', '005', '11119', '10105', '2.46153'),
	  ('1000000010', 'Drum and Bass Electronic Trap Dubstep Music', '2000000006', '003', '11110', '268', '4.76492'),
	  ('1000000011', 'Fire in the Hole Podcast', '2000000008', '009', '11121', '1050', '4.72095');
