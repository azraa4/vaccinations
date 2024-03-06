WITH updated_vaccinations AS (
  SELECT *,
         IFNULL(daily_vaccinations,
                PERCENTILE_CONT(daily_vaccinations, 0.5) OVER (PARTITION BY country)
               ) AS updatate_vaccinations
  FROM `grounded-style-416411.2002.countryy`
)
SELECT *
FROM updated_vaccinations;

