as yet unclassified
xAxisStepInterval: aValue
	self hasCoordinatesystem ifTrue: [
		self coordinatesystem xAxis stepInterval: aValue].
	self updateDiagrams