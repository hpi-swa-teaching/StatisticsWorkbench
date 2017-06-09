as yet unclassified
xAxisMax: aValue
	self hasCoordinatesystem ifTrue: [
		self coordinatesystem xAxis max: aValue].
	self updateDiagrams