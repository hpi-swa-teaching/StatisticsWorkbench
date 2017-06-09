as yet unclassified
extent: aPoint
	super extent: aPoint.
	self hasCoordinatesystem
		ifTrue:[
			self coordinatesystem extent: aPoint].
	self hasDiagram
		ifTrue:[
			self updateDiagrams]