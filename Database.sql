CREATE DATABASE IF NOT EXISTS econ_happy;
USE econ_happy;

-- Drop in correct dependency order
DROP TABLE IF EXISTS well_being_happiness;
DROP TABLE IF EXISTS economic_indicators_freedom;
DROP TABLE IF EXISTS country;


-- Parent table
CREATE TABLE country (
  `country_id` INT,
  `ountry_name` VARCHAR(100),
  `population_millions` FLOAT,
  PRIMARY KEY (`country_id`)
);

-- Child table
CREATE TABLE `well_being_happiness` (
  `country_id` INT PRIMARY KEY,
  `healthy_life_expectancy` FLOAT,
  `overall_rank_happiness` INT,
  `happiness_score` FLOAT,
  `freedom_to_make_life_choices` FLOAT,
  `generosity` FLOAT,
  `social_support` FLOAT,
  `perceptions_of_corruption` FLOAT,
  FOREIGN KEY (`country_id`) REFERENCES `country`(`country_id`)
);

-- Child table
CREATE TABLE `economic_indicators_freedom` (
  `country_id` INT PRIMARY KEY,
  `corporate_tax_rate` INT,
  `financial_freedom` INT,
  `judicial_effectivness` INT,
  `business_freedom` INT,
  `labor_freedom` INT,
  `trade_freedom` INT,
  `investment_freedom` INT,
  `monetary_freedom` INT,
  `gdp_per_capita` FLOAT,
  FOREIGN KEY (`country_id`) REFERENCES `country`(`country_id`)
);

