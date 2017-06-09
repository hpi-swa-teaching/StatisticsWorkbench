as yet unclassified
yAxisMax: aValue
	self hasCoordinatesystem ifTrue: [
		self coordinatesystem yAxis max: aValue].
	self updateDiagrams