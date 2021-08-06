as yet unclassified
testChartsToVisualize

	| expectedValue |
	
	self mainformModel chart: 1 setSelected: true.
	self mainformModel chart: 2 setSelected: true.
	expectedValue := {(self mainformModel getCharts at: 1) . (self mainformModel getCharts at: 2)}.
	
	self assert: [self mainformModel chartsToVisualize = expectedValue]
	




