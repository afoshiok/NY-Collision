WITH no_nulls AS (
    SELECT collision_id,
    CASE
        WHEN borough IS NULL THEN 'NOT SPECIFIED'
        ELSE borough
    END AS new_borough,
    YEAR("CRASH DATE") AS crash_yr
    FROM collisions
),

 year_cnt AS (
	SELECT new_borough, COUNT(collision_id) AS cnt, crash_yr, 
	FROM no_nulls
	WHERE crash_yr = 2023 OR crash_yr = 2024 
	GROUP BY new_borough, crash_yr
	ORDER BY new_borough, crash_yr
),

collision_yoy AS (
	SELECT *, 
		LAG(cnt) OVER (ORDER BY new_borough, crash_yr) AS last_yr,
		cnt - LAG(cnt) OVER (ORDER BY new_borough, crash_yr) AS diff
	 FROM year_cnt
)

SELECT new_borough AS borough, cnt AS collisions, crash_yr AS current_year, diff AS YoY
FROM collision_yoy
WHERE crash_yr = 2024