WITH no_nulls AS (
    SELECT collision_id,
    CASE
        WHEN borough IS NULL THEN 'NOT SPECIFIED'
        ELSE borough
    END AS new_borough
    FROM collisions
)

SELECT new_borough, COUNT(collision_id) AS collisions FROM no_nulls
GROUP BY new_borough