geometry
axis: aDimension max: aValue

	(self hasCoordinateSystem and: aDimension = #x) 
		ifTrue: [self coordinateSystem xAxis maximum: aValue].
		
	(self hasCoordinateSystem and: aDimension = #y) 
		ifTrue: [self coordinateSystem yAxis maximum: aValue].
		
	self updateCharts.
		
	(aDimension ~= #x and: aDimension ~= #y)
		ifTrue: [SWInvalidArgumentError signal: 'This dimension is not supported.']
