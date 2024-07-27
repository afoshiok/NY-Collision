```sql bronx_collision_types
SELECT cnt, "CONTRIBUTING FACTOR VEHICLE 1" FROM ny_collisions.fct_borough_colision_types
WHERE BOROUGH = 'BRONX'
ORDER BY cnt DESC
LIMIT 5
```
