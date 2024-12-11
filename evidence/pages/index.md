---
title: "New York Collisions"
---
A mini project, using data collision data from NYPD and NY DMV. The data was stored in DuckDB and transformed using DBT.

## Collisions in 2024

```sql ns_borough_yoy
SELECT * FROM ny_collisions.fct_borough_yoy
WHERE borough = 'NOT SPECIFIED'
```

```sql bx_borough_yoy
SELECT * FROM ny_collisions.fct_borough_yoy
WHERE borough = 'BRONX'
```

```sql bky_borough_yoy
SELECT * FROM ny_collisions.fct_borough_yoy
WHERE borough = 'BROOKLYN'
```

```sql man_borough_yoy
SELECT * FROM ny_collisions.fct_borough_yoy
WHERE borough = 'MANHATTAN'
```

```sql qn_borough_yoy
SELECT * FROM ny_collisions.fct_borough_yoy
WHERE borough = 'QUEENS'
```

```sql st_borough_yoy
SELECT * FROM ny_collisions.fct_borough_yoy
WHERE borough = 'STATEN ISLAND'
```



<!-- <BarChart 
    data={collisions_by_borough} 
    x=new_borough 
    y=collisions
    yFmt=3k
    colorPalette={
        '#FF6600'
    }
/> -->
<BigValue
    data={ns_borough_yoy}
    title="Not Specified"
    value=collisions
    comparison=YoY
    comparisonTitle="since 2023"
    fmt=0,000
    downIsGood=true
/>

<BigValue
    data={bx_borough_yoy}
    title="Bronx"
    value=collisions
    comparison=YoY
    comparisonTitle="since 2023"
    fmt=0,000
    downIsGood=true
/>

<BigValue
    data={bky_borough_yoy}
    title="Brooklyn"
    value=collisions
    comparison=YoY
    comparisonTitle="since 2023"
    fmt=0,000
    downIsGood=true
/>

<BigValue
    data={man_borough_yoy}
    title="Manhattan"
    value=collisions
    comparison=YoY
    comparisonTitle="since 2023"
    fmt=0,000
    downIsGood=true
/>

<BigValue
    data={qn_borough_yoy}
    title="Queens"
    value=collisions
    comparison=YoY
    comparisonTitle="since 2023"
    fmt=0,000
    downIsGood=true
/>

<BigValue
    data={st_borough_yoy}
    title="Staten Island"
    value=collisions
    comparison=YoY
    comparisonTitle="since 2023"
    fmt=0,000
    downIsGood=true
/>

```sql borough_totals
SELECT new_borough AS borough, collisions FROM ny_collisions.fct_borough_collisions
```



<BarChart
    data={borough_totals}
    title="Total Collisions by Borough (2012 - 2024)"
    x=borough
    y=collisions
    swapXY=true
    colorPalette={
        '#FF6600'
    }
/>

```sql collisions_by_year

SELECT * FROM ny_collisions.fct_collisions_by_year
```




<LineChart 
    data={collisions_by_year}
    title="Total Collisions by Year"
    x=crash_year
    y=crashes
    xFmt=0
    yAxisTitle="Collisions"
    series=BOROUGH
    colorPalette={
        [
        '#003884',
        '#f3ca40',
        '#f2a541',
        '#f08a4b',
        '#d78a76'
        ]
    }
/>