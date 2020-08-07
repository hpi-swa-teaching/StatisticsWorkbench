
# Statistics Workbench

dev: [![Build Status](https://api.travis-ci.org/hpi-swa-teaching/StatisticsWorkbench.svg?branch=dev)](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench)
submission: [![Build Status](https://api.travis-ci.org/hpi-swa-teaching/StatisticsWorkbench.svg?branch=submission)](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench)

(SWT20-Project-05)

Statistics Workbench is a tool for the visualization and analyzation of data.
It offers multiple mathematical functions for finding the maximum, minimum, mean, mode, maximal derivation and so on of a dataset, as well as multiple chart types, like bargraphs and piecharts.
There are multiple ways of creating datasets from different inputs outlined below.

## Overview & Getting Started

Statistics workbench offers a large number of functionality for displaying the different charts but is not complete yet and not all functionality is supported by all chart types yet.

There are Coding Standards [which can be found in the wiki](https://github.com/hpi-swa-teaching/StatisticsWorkbench/wiki/Coding-Standards) which we got from our predecessors and have maintained and used to make creating constistent code a bit easier and we encourage you to keep using them.

Take a look at [Issue #75](/../../issues/75) to get a Overview of what features may be missing and some Ideas for features that could be nice to implement.

The test base is very comprehensive for some chart types and almost non-existent for some others and could also be a good place to start and get to know the legacy project. Below you will get a short introduction into the most important features to get you started as well.

## Installation

First install metacello using [this guide](https://github.com/Metacello/metacello#squeak). Then run the following in a workspace in your Squeak image.

```smalltalk
Metacello new
  baseline: 'StatisticsWorkbench';
  repository: 'github://hpi-swa-teaching/StatisticsWorkbench:dev/packages';
  load.
```

After that you are good to go.

## Usage

We created multiple examples, in order to get you started with the existing project.
You can find them in the StatisticsWorkbench-Examples package.
They can be used by calling:

```smalltalk
<ExampleName> open.
```

E.g.

```smalltalk
SWCreateChartExample open.
```

Feel free to take a look at the `open` method of each example to see how creating data or diagrams works.

There are now several different ways to create datasets, each of which has its own example

```smalltalk
SWDataFrom<...>Example
```

Data can be created from seperate collections, from a collection of single datapoints or from a string, which is the way it initially was implemented and which we have slowly been phasing out in favor of using squak internal data types to create data:

```smalltalk
data := SWDataLabeled fromXValues: {1 . 2 . 3 . 4} againstYValues: {22 . -23 . 15 . 6} withLabels: {'one' . 'two' . 'three' . 'four'}.

labeledData := SWDataLabeled fromDataPointCollections: #(#(1 1 'one') #(2 1 'two') #(3 3 'three') #(4 1 'four')).

unlabeledData := SWDataUnlabeled fromDataPointCollections: #(#(0 2) #(1 1) #(2 1) #(3 3) #(4 0)).
```

Labels can be added after the fact too:

```smalltalk
data setLabels: {'one' . 'two' . 'three' . 'four'}.
```

Then, you can set the dimensions to label the X and Y axes:

```smalltalk
data setAllDimensionNames: #('City' 'PopulationInThousands').
```

Afterwards you can visualize it as LineGraph/BarChart/PieChart/etc:

```smalltalk
graph := SWDiagram new visualize: data with: SWBarGraph create.
graph := SWDiagram new visualize: data with: SWLineChart create.
graph := SWDiagram new visualize: data with: SWPieChart create.
graph := SWDiagram new visualize: data with: SWScatterPlot create.
```

And you can open your chart in a window - that can also be labelled - with

```smalltalk
graph openInWindow.
graph openInWindowLabeled: 'My Diagram'
```

If you want to adjust your diagram, you can do that as follows:

```smalltalk
(graph charts first) barWidth: 40.
graph chartsColor: Color green.
graph axisColor: Color red.
```

You can also choose another SWColorTheme by inspecting the diagramm and calling:

```smalltalk
self applyColorTheme: SWDarkTheme new.
self applyColorTheme: SWHPITheme new.
```

Furthermore, you can display the mean value of your data:

```smalltalk
self showMean.
```

## Compatibility

The new `SWAxisRange` class inherits from `Interval` and relies on the variable `start` which was not added until Squeak version 5.2.
Accordingly this implementation is incompatible with older Squeak versions which is the reason the Travis CI Builds show failed tests relying on said variable.
