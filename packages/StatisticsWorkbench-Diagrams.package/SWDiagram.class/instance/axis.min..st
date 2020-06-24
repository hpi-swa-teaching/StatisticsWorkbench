geometry
axis: aDimension min: aValue

	(self hasCoordinateSystem and: aDimension = #x) 
		ifTrue: [self coordinateSystem xAxis minimum: aValue].
		
	(self hasCoordinateSystem and: aDimension = #y) 
		ifTrue: [self coordinateSystem yAxis minimum: aValue].
		
	self updateCharts.
		
	(aDimension ~= #x and: aDimension ~= #y)
		ifTrue: [SWInvalidArgumentError signal: 'This dimension is not supported.']
