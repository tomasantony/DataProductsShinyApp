DataProductsShinyApp
========================================================
**Stock Tracker App based on Quantmod package.**

Author: Thomas Antony

Date:  29February2016.


Stock Technical Analysis and Charting
========================================================
**Technical Analysis**

  - It is the forecasting of future financial price movements based on an examination of past price movements.
  
**Technical Analysis helps in understanding**
  - Overall Trend
  - Momentum
  - Buying/Selling Pressure
  - Relative Strength
  - Support/Resistance
  - Pictorial Price History

Stock Tracker App
========================================================

This application is based on the popular Quantmod R package. 
There are Three tabs present for this application.
- Documentation - You can find the documentation on how to use the app here
- StockTracker - This is the actual App  interface. 
    - Need to enter the ticker symbol of a stock to see the price over a period of time
    - May change the Date Range
    - May select Chart Themes
    - May select Multiple Technical Analysis overlays to get the charts you want

- Github link. This is the github link of the this App
  - https://github.com/tomasantony/DataProductsShinyApp.git

Plotting using Quantmod
========================================================
**Quantmod Package Example. Let us Examine the stock of Apple Inc.**
  - The ticker symbol is AAPL


```r
require(quantmod)
getSymbols("AAPL")
```

```
[1] "AAPL"
```

```r
barChart(AAPL)
```

![plot of chunk unnamed-chunk-1](StockTracker-figure/unnamed-chunk-1-1.png)

Advantage of Stock Tracker App
========================================================

**Many Adavantage of using this App instead of just using Quantmod R packages**
- Can select the technical Analysis of Choice from the list provided
- Can select the Date range from a drop down calendar menu - by clicking the date range boxes
- Can select the themes to display
- No need to type long commands - only the ticker symbol is required
- Can select multiple charts at once



