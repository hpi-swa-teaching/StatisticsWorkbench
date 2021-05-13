testing
testRemoveOnUserInput

	| size selectedDataPoint |
	size := self scatterPlot dataPoints size.
	self assert: (self scatterPlot data contains: [:data | data x = 3 and: data y = 0 ]) .
	selectedDataPoint := self scatterPlot dataPoints detect: [:dataPoint | dataPoint vector x = 3 and: dataPoint vector y = 0 ].
	self hand handleEvent: (self redMouseDownAt: (selectedDataPoint)).
	self deny: (self scatterPlot data contains: [:data | data x = 3 and: data y = 0 ]).
	self assert: self scatterPlot dataPoints size = (size - 1) 