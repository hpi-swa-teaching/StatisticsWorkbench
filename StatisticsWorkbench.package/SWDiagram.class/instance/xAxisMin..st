as yet unclassified
xAxisMin: aValue
	self hasCoordinatesystem ifTrue: [
		self coordinatesystem xAxis min: aValue].
	self updateDiagrams