```sql bronx_collision_types
SELECT "CONTRIBUTING FACTOR VEHICLE 1" AS "name", cnt as "value" FROM ny_collisions.fct_borough_colision_types
WHERE BOROUGH = 'BRONX' AND "CONTRIBUTING FACTOR VEHICLE 1" != 'Unspecified'
ORDER BY cnt DESC
LIMIT 5

```
# The Bronx
<PointMap
lat=40.8448 long=73.8648
/>
<ECharts config={
    {
      title: {
        text: 'Top 5 Collision Contributing Factors',
      },
        tooltip: {
            formatter: '{b}: {c} Collisions'
        },
      series: [
        {
          type: 'treemap',
          visibleMin: 300,
          label: {
            show: true,
            formatter: '{b}'
          },
          itemStyle: {
            borderColor: '#fff',
          },
          roam: false,
          nodeClick: false,
          data: [...bronx_collision_types],
          breadcrumb: {
            show: false
          },
        }
      ],
      color: ['#FD802C',
        '#FF6600',
        '#D15604',
        '#A64504',
        '#7C3403']
      }
    }
/>