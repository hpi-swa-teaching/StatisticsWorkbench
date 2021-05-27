as yet unclassified
testChartsToVisualize

	| expectedValue |
	self mainformModel chart: 1 setSelected: true.
	self mainformModel chart: 2 setSelected: true.

	expectedValue := OrderedCollection new 
		add: (self mainformModel getCharts at: 1); 
		add: (self mainformModel getCharts at: 2);
		yourself.

	self assert: [self mainformModel chartsToVisualize = expectedValue].
	




