USE econ_happy;

SELECT * FROM country;
SELECT * FROM economic_indicators_freedom;
SELECT * FROM well_being_happiness;

-- Business Case: We are a pharmaceutical company seeking to expand our antidepressant sales in markets 
-- with stable governance (low corruption), strong economies (high GDP per capita), and robust social support 
-- systems — factors that correlate with better healthcare infrastructure and higher purchasing power. Using the 
-- World Happiness Report 2019 dataset, we will analyze these variables alongside overall happiness scores to 
-- identify countries where demand for mental health treatments may be high and market conditions favorable for growth.

-- Possible Hypothesis: "Countries with high GDP, low corruption, and strong social support—but middling 
-- happiness scores (5.0–6.5)—represent optimal markets for antidepressant sales due to unmet mental health 
-- needs despite favorable socioeconomic conditions. We are risk-averse investors."

-- Analysis
-- UNION of country_name that have: 
-- 1. business_freedom (high), 
-- 2. gdp_per_capita (high)
-- 3. perception_of_corruption (low) 
-- 4. social_support (high)
-- 5. happiness_score (low)


SELECT country.ountry_name
FROM economic_indicators_freedom
JOIN well_being_happiness
ON economic_indicators_freedom.country_id = well_being_happiness.country_id
JOIN country
ON economic_indicators_freedom.country_id = country.country_id
WHERE ((economic_indicators_freedom.business_freedom > 60)
AND (economic_indicators_freedom.gdp_per_capita > 1.15)
AND (well_being_happiness.perceptions_of_corruption > 0.15)
AND (well_being_happiness.social_support > 1.15)
AND (well_being_happiness.happiness_score < 7)
AND (country.population_millions > 10)
);


-- General Analysis of DataSet

SELECT MAX(w.overall_rank_happiness) AS max_rank, MIN(w.overall_rank_happiness) AS min_rank
FROM well_being_happiness AS w;

SELECT 
  w.country_id,
  c.ountry_name,
  w.overall_rank_happiness,
  CASE
    WHEN w.overall_rank_happiness <= 10 THEN 'Very Happy'
    WHEN w.overall_rank_happiness <= 50 THEN 'Moderately Happy'
    ELSE 'Unhappy'
  END AS happiness_level
FROM well_being_happiness AS w
JOIN country AS c ON c.country_id = w.country_id;


-- Hypothesis 1: Countries with higher social support are happier on average.

SELECT ROUND(social_support, 1) AS support_level, ROUND(AVG(happiness_score),1) AS avg_happiness FROM well_being_happiness
GROUP BY support_level
ORDER BY support_level DESC;











