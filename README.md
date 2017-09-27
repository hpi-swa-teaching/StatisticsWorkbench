# SWT17-Project-10 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT17-Project-10.svg?branch=master)](https://travis-ci.org/HPI-SWA-Teaching/SWT17-Project-10)[![Coverage Status](https://coveralls.io/repos/github/HPI-SWA-Teaching/SWT17-Project-10/badge.svg?branch=master)](https://coveralls.io/github/HPI-SWA-Teaching/SWT17-Project-10?branch=master)[![Build status](https://ci.appveyor.com/api/projects/status/8xha1uuj2klmw4o2?svg=true)](https://ci.appveyor.com/project/marcfreiheit/swt17-project-10)

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
