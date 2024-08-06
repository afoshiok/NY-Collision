WITH bronx_collisions AS (
    SELECT * FROM collisions
    WHERE borough = 'BRONX'
)

SELECT * FROM bronx_collisions
ORDER BY "CRASH DATE" DESC
LIMIT 50