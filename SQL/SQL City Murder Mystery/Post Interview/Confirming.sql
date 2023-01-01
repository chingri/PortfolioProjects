-----Seeing if Jeremy Bowers fits all the descriptions of the witnesses testimonies-----
 SELECT person.id,
       plate_number,
       person.NAME,
       check_in_date,
       membership_status
FROM   drivers_license
JOIN   person
ON     person.license_id = drivers_license.id
JOIN   get_fit_now_member
ON     get_fit_now_member.person_id = person.id
JOIN   get_fit_now_check_in
ON     get_fit_now_check_in.membership_id=get_fit_now_member.id
WHERE  plate_number LIKE '%H42W%' 

--Time to interview Jeremy Bowers to see why he committed such a heinous crime 
