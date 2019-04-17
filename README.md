# Statistics Workbench [![Build Status](https://api.travis-ci.org/hpi-swa-teaching/StatisticsWorkbench.svg?branch=submission)](https://travis-ci.org/hpi-swa-teaching/StatisticsWorkbench)
(SWT18-Project-17)

Statistics Workbench is a tool for the visualization and analyzation of data. It offers multiple mathematical functions for finding the maximum, minimum, mean, mode, maximal derivation and so on of a dataset, as well as multiple chart types, like bargraphs and piecharts.

## Getting Started

If you want to use our tool, make sure you have installed Pheno.
https://github.com/tom95/Pheno

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

We also created a User Interface for users that don't want to use our code directly.
You can open the UI by calling:
```
SWGUI open.
```
In the UI you can create new datasets by clicking the "new" button.
Another dialog will open, where you will be asked to set a name and the values of your dataset.
The values can be seperated by multiple characters, like: " |()[]{},@#=&".
The first two words of the value-text-field will be used as axis labels.
If you need an example, just push the "Fill with example data" button on top.
