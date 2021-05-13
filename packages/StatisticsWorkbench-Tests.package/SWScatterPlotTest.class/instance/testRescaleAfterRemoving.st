testing
testRescaleAfterRemoving

	| xScaleBefore xScaleAfter |
	xScaleBefore := self diagram coordinateSystem xAxis maximum.
	self scatterPlot remove: (self scatterPlot dataPoints detect: [:datapoint | datapoint vector first = 3 and: datapoint vector second = 0 ]).
	xScaleAfter := self diagram coordinateSystem xAxis maximum.
	self assert: (xScaleBefore ~= xScaleAfter)