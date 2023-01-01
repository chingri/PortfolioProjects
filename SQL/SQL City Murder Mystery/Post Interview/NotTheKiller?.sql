-----Jeremy Bower's Statement-----

--I was hired by a woman with a lot of money. 
--I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
--She has red hair and she drives a Tesla Model S. 
--I know that she attended the SQL Symphony Concert 3 times in December 2017. 

--Lets look further into this woman 
SELECT *
FROM   facebook_event_checkin
WHERE  date LIKE '201712%'
       AND event_name = 'SQL Symphony Concert'
GROUP  BY person_id
HAVING Count(person_id) = 3  
-- Two ID's pop up 24556 and 99716 

-- We know it's a woman and secondly she has alot of money
SELECT id,
       annual_income,
       NAME
FROM   person
       JOIN income
         ON income.ssn = person.ssn
WHERE  id IN ( 24556, 99716 )

-- Upon running the query the true mastermind behind the crime is found 
--Miranda Priestly 
--ID no. 24556 returns the name of a man who has no source of income

-- WE CAN CONCLUSIVELY SAY THAT THE CRIME WAS ORGANIZED BY 'MIRANDA PRIESTLY'
-- AND PERPETRATED BY 'JEREMY BOWERS'
-- WITH CASE CLOSE SQL CITY CAN FOR NOW REST EASY
