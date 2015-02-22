---
title       : Developing Data Products
subtitle    : devdataprod-011
author      : Oleksiy Babich
job         : learning curve
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Course Project idea

* First part of Course Project is a Shiny App

* This Shiny App shows an example of normal distribution histogram

* It has a number of inputs, output chart and tiny help section

* Output includes ideal (theoretical) mean from input and perfect distribution curve

* The whole app is simple and self-explanatory

--- .class #id 

## Inputs

As inputs we have:

* `mean` value in selection from -10 to 10 with step 0.01 and default as 0

* `sd` value in selection from 0.001 to 2 with step 0.001 and default as 1

* number of `samples` in selection from 1 to 2000 with default as 500

* `random seed` value in selection from 1 to 10000 to make the results reproducible (8888 by default)

Predefine input values with defaults for example

```r
m = 0
sd = 1
samples = 500
random = 8888
```


--- .class #id 

## Sample output


```r
set.seed(random)
data <- rnorm(samples, mean = m, sd = sd)

hist(data, col='lightblue', main='Histogram', prob=TRUE)
abline(v = m, col = "red", lwd = 5)
curve(dnorm(x, mean = m, sd = sd), col = "darkblue", add = TRUE)
```

![plot of chunk plotChunk](assets/fig/plotChunk-1.png) 

--- .class #id 

## Thank you!

Course Project Links:

https://ababich.shinyapps.io/devdataprod-011/

https://github.com/ababich/devdataprod-011

http://ababich.github.io/devdataprod-011

