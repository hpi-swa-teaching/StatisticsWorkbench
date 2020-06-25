visualization
visualizeCenteredAxes: aSWData with: aChart 

	self visualize: aSWData with: aChart.

	(self hasCoordinateSystem)
		ifFalse: [Exception signal: 'This chart does not have a coordinate system.'].
		
	self coordinateSystem centeredAxes: true
