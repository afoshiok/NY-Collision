---
title: "New York Collisions"
---
This page can be found in your project at `/pages/index.md`. Make a change to the markdown file and save it to see the change take effect in your browser.

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
    title="Total Collisions by Borough"
    x=borough
    y=collisions
    swapXY=true
    colorPalette={
        '#FF6600'
    }
/>
