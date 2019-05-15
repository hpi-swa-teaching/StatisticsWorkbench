# Statistics Workbench [![Build Status](https://api.travis-ci.org/hpi-swa-teaching/StatisticsWorkbench.svg?branch=submission)](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench)
(SWT19-Project-15)

Statistics Workbench is a tool for the visualization and analyzation of data. 
It offers multiple mathematical functions for finding the maximum, minimum, mean, mode, maximal derivation and so on of a dataset, as well as multiple chart types, like bargraphs and piecharts.

## Getting Started


We created multiple examples, in order to get you started with our project.
You can find them in the StatisticsWorkbench-Examples package.
They can be used by calling:
```
[ExampleName] open.
```
E.g.
```
SWCreateChartExample open.
```
If you want to create your own diagramm, based on your data, you can do that as follows: 

First you create your data with the help of our SWVector:

```
dataString := 'x|y 1|22 2|110 3|64 4|211 5|35'.

```

Then, you can set the dimensions.

```
data setAllDimensionNames: #('City' 'PopulationInThousands').

```
Afterwards you can visualize it as LineGraph/BarChart/PieChart/etc:

```
graph := (SWDiagram new visualize: data with: SWBarGraph create.) 
graph := (SWDiagram new visualize: data with: SWLineChart create.)
graph := (SWDiagram new visualize: data with: SWPieChart create.)
```

And you can open your chart in a window with 

```
openInWindow
```

If you want to adjust your diagram, you can do that as follows: 

```
(graph charts first) barWidth: 40.
graph chartsColor: Color green.
graph axisColor: Color red.
```

