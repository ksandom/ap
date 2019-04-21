# Runways

Gets/uses knowledge of runways around the world for planning take offs, landings, and routes.

## Getting started

```
ap -v --updateRunways
```

## Debugging without causing undue load on other parties

If you want to debug the update process, I suggest downloading the data once, and doing the debugging on the downloaded data rather than downloading it each time.

```
ap --downloadRunways
ap -v --updateRunways=runways.csv
```
