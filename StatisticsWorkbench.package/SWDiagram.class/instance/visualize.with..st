as yet unclassified
visualize: aSWData with: aChart 
	| chart |
	chart := aChart create.
	self addChart: chart.
	
	chart data: aSWData.
		
	aChart needsCoordinateSystem 
		ifTrue: [self updateCoordinateSystem]
		ifFalse: [self bounds: chart bounds. self coordinateSystem hide].
	
	self updateCharts