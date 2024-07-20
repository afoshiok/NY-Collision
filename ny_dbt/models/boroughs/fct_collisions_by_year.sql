WITH borough_dates AS (
	SELECT YEAR("CRASH DATE") AS crash_year, borough FROM collisions
	WHERE borough IS NOT NULL
)

SELECT crash_year, borough, Count(*) AS crashes FROM borough_dates
GROUP BY crash_year, borough
ORDER BY crash_year ASC