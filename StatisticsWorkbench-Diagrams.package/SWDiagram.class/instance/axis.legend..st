geometry
axis: aDimension legend: aValue

	(self hasCoordinateSystem and: aDimension = #x) 
		ifTrue: [^self coordinateSystem xAxis setLegend: aValue].
		
	(self hasCoordinateSystem and: aDimension = #y) 
		ifTrue: [^self coordinateSystem yAxis setLegend: aValue].
		
	SWInvalidArgumentError signal: 'This dimension is not supported.'