-----Combining Morty Schapiro and Annabel Miller's testimonys----- 

SELECT*
FROM   get_fit_now_check_in
       JOIN get_fit_now_member
         ON get_fit_now_check_in.membership_id = get_fit_now_member .id
WHERE  membership_id LIKE '48Z%'
       AND check_in_date = 20180109
       AND membership_status = 'gold'
-- The two suspects which come out are Jeremy Bowers(67318) and Joe Germuska(28819)


-- Let's now check their driver's license 
-- First we need to find their license id 
SELECT *
FROM   person
WHERE  id IN ( 67318, 28819 )  
-- Joe Germuska (173289) 
--Jeremy Bowers(423327) 

-- Marty Schapiro mentioned in his testimony that the car the killer used to flee had "H42W" on the plate.
SELECT person.id,
       plate_number,
       person.NAME
FROM   drivers_license
       JOIN person
         ON person.license_id = drivers_license.id
WHERE  plate_number LIKE '%H42W%'  
-- Using the query gives us the name "Jeremy Bowers"
