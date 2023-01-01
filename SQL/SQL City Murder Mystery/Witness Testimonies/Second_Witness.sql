--Lets look at Annabel Miller's side of the story 
SELECT*
FROM   person
WHERE  address_street_name = "northwestern dr"
ORDER  BY address_number DESC  
-- Annabel Miller Info -- 
-- id = 16371 , ssn = 318771143, license-id = 	490173-- 

--Let's find some extra info on her 
SELECT *
FROM   facebook_event_checkin
WHERE  person_id = 16371 
-- Annabel Miller attended "The Funky Grooves Tour" on the day of the murder

--Let's take a look at her interview 
SELECT*
FROM   interview
WHERE  person_id = 16371  
-- She recognized the killer from the gym from when she went to work out on the 9th of Jan 

-- Lets look at the list of people who attended the gym on those days 
SELECT*
FROM   get_fit_now_check_in
WHERE  check_in_date = 20180109  
