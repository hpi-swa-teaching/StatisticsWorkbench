as yet unclassified
visualize: aSWDataSet with: aChart 
	| chart |
	chart := aChart create.
	aChart needsCoordinateSystem
		ifTrue: [chart coordinateSystem: self addCoordinateSystem].
	chart dataset: aSWDataSet.
	self addChart: chart.
	aChart needsCoordinateSystem 
		ifTrue: [self updateCoordinateSystem]
		ifFalse: [self bounds: chart bounds].
	self updateCharts