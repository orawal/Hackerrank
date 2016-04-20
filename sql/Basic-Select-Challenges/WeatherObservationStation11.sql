select distinct CITY from STATION where CITY regexp '^[^aeiou].*' or CITY regexp '.*[^aeiou]$' order by CITY;
