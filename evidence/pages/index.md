---
title: "New York Collisions"
---
This page can be found in your project at `/pages/index.md`. Make a change to the markdown file and save it to see the change take effect in your browser.

```sql collisions_by_borough
SELECT * FROM ny_collisions.fct_borough_collisions
```

<BarChart 
    data={collisions_by_borough} 
    x=new_borough 
    y=collisions
    yFmt=k
/>

```sql orders_by_category
  select 
      date_trunc('month', order_datetime) as month,
      sum(sales) as sales_usd,
      category
  from needful_things.orders
  where category like '${inputs.category.value}'
  and date_part('year', order_datetime) like '${inputs.year.value}'
  group by all
  order by sales_usd desc
```

<BarChart
    data={orders_by_category}
    title="Sales by Month, {inputs.category.label}"
    x=month
    y=sales_usd
    series=category
/>

## What's Next?
- [Connect your data sources](settings)
- Edit/add markdown files in the `pages` folder
- Deploy your project with [Evidence Cloud](https://evidence.dev/cloud)

## Get Support
- Message us on [Slack](https://slack.evidence.dev/)
- Read the [Docs](https://docs.evidence.dev/)
- Open an issue on [Github](https://github.com/evidence-dev/evidence)
