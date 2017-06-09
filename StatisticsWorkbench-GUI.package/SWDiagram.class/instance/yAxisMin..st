as yet unclassified
yAxisMin: aValue
	self hasCoordinatesystem ifTrue: [
		self coordinatesystem yAxis min: aValue]
	updateDiagrams