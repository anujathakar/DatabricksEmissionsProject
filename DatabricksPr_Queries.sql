select * from emissions_data


select latitude,
longitude,
`GHG emissions mtons CO2e` as Emissions
from emissions_data


select county_state_name,
       population,
       cast(replace(`GHG emissions mtons CO2e`, ',', '') as double) / population as Emissions_per_person
from emissions_data
order by emissions_per_person desc
limit 10


select state_abbr,
       sum(cast(replace(`GHG emissions mtons CO2e`, ',', '') as double)) as Total_Emissions
from emissions_data
group by state_abbr
order by total_emissions desc
limit 10


WITH state_emissions AS (
  SELECT state_abbr,
         sum(cast(replace(`GHG emissions mtons CO2e`, ',', '') as double)) as Total_Emissions
  FROM emissions_data
  GROUP BY state_abbr
),
top_10 AS (
  SELECT state_abbr, Total_Emissions
  FROM state_emissions
  ORDER BY Total_Emissions DESC
  LIMIT 10
),
top_10_total AS (
  SELECT sum(Total_Emissions) as Top_10_Total_Emissions
  FROM top_10
),
country_total AS (
  SELECT sum(Total_Emissions) as Country_Total
  FROM state_emissions
)
SELECT 
  t.Top_10_Total_Emissions,
  round((t.Top_10_Total_Emissions / c.Country_Total) * 100, 2) as Top_10_Pct_of_Country
FROM top_10_total t
CROSS JOIN country_total c


select county_state_name,
       population,
       cast(replace(`GHG emissions mtons CO2e`, ',', '') as double)  as Total_Emissions
from emissions_data
order by Total_emissions desc
limit 10