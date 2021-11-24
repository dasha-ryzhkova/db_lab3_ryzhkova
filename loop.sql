--select * from Podcasts
create table Podcastscopy as select * from Podcasts
--delete from Podcastscopy
--select * from Podcastscopy





-- DO $$
--  DECLARE
--      quantity     Podcastscopy.viewers_quantity %TYPE;
--      pod_name     Podcastscopy.pod_name%TYPE;
-- 	 pod_id Podcastscopy.pod_id%TYPE;
-- 	 country_id Podcastscopy.country_id%TYPE;
-- 	 author_id Podcastscopy.author_id%TYPE;


--  BEGIN
--     quantity    := 1012;
--     pod_name    := 'Opera After Dark';
-- 	pod_id := '100000000';
-- 	country_id := '00';
-- 	author_id := 'Kevin Trotman';
--     FOR counter IN 1..9
--         LOOP
--             INSERT INTO Podcastscopy(viewers_quantity , pod_name, pod_id, country_id, author_id)
--             VALUES (counter + quantity, pod_name || counter, pod_id || counter, country_id || counter, author_id || counter);
--         END LOOP;
	
-- END;
-- $$