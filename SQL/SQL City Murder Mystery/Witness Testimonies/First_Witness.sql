--Let's find out the identity of the first witness

-- Finding out the first witness
SELECT*
FROM   person
WHERE  address_street_name = "northwestern dr"
ORDER  BY address_number DESC  

-- Name = "Morty Schapiro"
-- id= 14887, ssn = 111564949, license id = 118009

-- Let's learn abit more about the Morty Schapiro 
SELECT *
FROM   facebook_event_checkin
WHERE  person_id = 14887   
--Acc. to facebook s/he attended 'The Funky Grooves Tour' held on the same date as the murder



--Let's take a look at his/her interview 
SELECT*
FROM   interview
WHERE  person_id = 14887 
--Acc. to him the suspect is a man with a "Get Fit Now Gym" bag. 
--The membership number on the bag started with "48Z". Only gold members have those bags. 
--The man got into a car with a plate that included "H42W".


--Let's dig deeper into this 

SELECT*
FROM   get_fit_now_check_in
       JOIN get_fit_now_member
         ON get_fit_now_check_in.membership_id = get_fit_now_member .id
WHERE  membership_id LIKE '48Z%'  

-- This leaves us with multiple suspects, let's look at the second witness
