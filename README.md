# Statistics Workbench

dev: [![Build Status](https://api.travis-ci.org/hpi-swa-teaching/StatisticsWorkbench.svg?branch=dev)](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench) 
submission: [![Build Status](https://api.travis-ci.org/hpi-swa-teaching/StatisticsWorkbench.svg?branch=submission)](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench) 

(SWT19-Project-15)

Statistics Workbench is a tool for the visualization and analyzation of data. 
It offers multiple mathematical functions for finding the maximum, minimum, mean, mode, maximal derivation and so on of a dataset, as well as multiple chart types, like bargraphs and piecharts.


## How to Install

First install metacello using [this guide](https://github.com/Metacello/metacello#squeak). Then run the following in a workspace in your Squeak image.

```
Metacello new
  baseline: 'StatisticsWorkbench';
  repository: 'github://hpi-swa-teaching/StatisticsWorkbench:dev/packages';
  load.
``` 
 
After that you are good to go.


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
data := SWDataUnlabeled fromString: dataString ofDataDimension: 2.

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

And you can open your chart in a window - that can also be labelled - with 

```
graph openInWindow.
graph openInWindowLabeled: 'My Diagram'
```

If you want to adjust your diagram, you can do that as follows: 

```
(graph charts first) barWidth: 40.
graph chartsColor: Color green.
graph axisColor: Color red.
```

You can also choose another SWColorTheme by inspecting the diagramm and calling:
```
self applyColorTheme: SWDarkTheme new.
self applyColorTheme: SWHPITheme new.
```

Furthermore, you can display the mean value of your data:
```
self showMean.
```
