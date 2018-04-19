# SWT18-Project-17 [![Build Status](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench)[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/StatisticsWorkbench/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/StatisticsWorkbench?branch=master)[![Build status](https://ci.appveyor.com/api/projects/status/8xha1uuj2klmw4o2?svg=true)](https://ci.appveyor.com/project/marcfreiheit/swt17-project-10)

Statistics Workbench

## Usage

Create data or use example data "seeded2" with...

```Smalltalk
dataset := SWDataTests createSeeded2.
````

... then display data with a scatter plot (class SWScatterPlot) or bar chart (class SWBarGraph) or function graph (class SWLineChart) or pie chart (class SWPieChart) with... 

```Smalltalk
(SWDiagram new visualize: dataset with: SWScatterPlot) openInWorld 
```

... or display data with multiple plots by using following code..

```Smalltalk
(SWDiagram new visualize: dataset with: SWScatterPlot create and: SWLineChart) openInWorld 
```

Manipulate dataset individually by adding data point with:

```Smalltalk
dataset add: #(70 30).
```

... or deleting datapoints with...

```Smalltalk
dataset remove: #(70 30).
```
