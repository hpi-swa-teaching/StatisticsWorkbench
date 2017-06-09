as yet unclassified
yAxisStepInterval: aValue
	self hasCoordinatesystem ifTrue: [
		self coordinatesystem yAxis stepInterval: aValue]
	updateDiagrams