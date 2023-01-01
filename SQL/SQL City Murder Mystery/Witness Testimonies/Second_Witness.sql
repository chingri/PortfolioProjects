--Lets look at Annabel Miller's side of the story 
select*from person 
where address_street_name = "Northwestern Dr"
order by address_number desc  
-- Annabel Miller Info -- 
-- id = 16371 , ssn = 318771143, license-id = 	490173-- 

--Let's find some extra info on her 
select * from facebook_event_checkin 
where person_id = 16371
-- Annabel Miller attended "The Funky Grooves Tour" on the day of the murder

--Let's take a look at her interview 
select* from interview  
where person_id =  16371 
-- She recognized the killer from the gym from when she went to work out on the 9th of Jan 

-- Lets look at the list of people who attended the gym on those days 
select*from get_fit_now_check_in 
where check_in_date = 20180109
