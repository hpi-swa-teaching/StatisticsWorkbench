as yet unclassified
visualize: aSWDataSet with: aChart 
	| chart |
	chart := aChart create.
	self addChart: chart.
	
	chart dataset: aSWDataSet.
	
	aChart needsCoordinateSystem 
		ifTrue: [self updateCoordinateSystem]
		ifFalse: [self bounds: chart bounds].
		
	
	self updateCharts