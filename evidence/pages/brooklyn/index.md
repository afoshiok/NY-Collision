```sql brooklyn_collision_types
SELECT "CONTRIBUTING FACTOR VEHICLE 1" AS "name", cnt as "value" FROM ny_collisions.fct_borough_colision_types
WHERE BOROUGH = 'BROOKLYN' AND "CONTRIBUTING FACTOR VEHICLE 1" != 'Unspecified'
ORDER BY cnt DESC
LIMIT 5

```
# Brooklyn

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
          data: [...brooklyn_collision_types],
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