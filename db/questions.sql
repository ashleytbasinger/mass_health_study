--I made a comment! Boom!

--What 3 towns have the highest population of citizens that are 65 years and older?
SELECT * FROM town_health_records ORDER BY population_over_age_65 DESC LIMIT 3;
--What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT * FROM town_health_records ORDER BY population_under_19 DESC LIMIT 3;
--What 5 towns have the lowest per capita income?
SELECT * FROM town_health_records ORDER BY per_capita_income LIMIT 5;
--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT * FROM town_health_records WHERE (town_name != 'Boston' OR town_name != 'Becket' OR town_name != 'Beverly') ORDER BY percentage_teen_births DESC LIMIT 1;
--Omitting Boston, what town has the highest number of infant mortalities?
SELECT * FROM town_health_records WHERE (town_name != 'Boston') ORDER BY infant_mortalities DESC LIMIT 1;
