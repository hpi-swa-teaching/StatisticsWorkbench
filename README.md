# SWT18-Project-17 [![Build Status](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench.svg?branch=dev)](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench)
 | 


## Usage

Create data or use example data "seeded2" with...

```
dataset := SWDataTest createSeeded2.
```

... then display data with a scatter plot (class SWScatterPlot) or bar chart (class SWBarGraph) or function graph (class SWLineChart) or pie chart (class SWPieChart) with... 

```
(SWDiagram new visualize: dataset with: SWScatterPlot create) openInWorld 
```

... or display data with multiple plots by using following code..

```
(SWDiagram new visualize: dataset with: SWScatterPlot create and: SWLineChart create) openInWorld 
```

Manipulate dataset individually by adding data point with...

```
dataset add: #(70 30).
```

... or deleting data points with...

```
dataset remove: #(70 30).
```
