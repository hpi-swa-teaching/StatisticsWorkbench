as yet unclassified
extent: aPoint
	super extent: aPoint.
	self hasCoordinateSystem
		ifTrue:[
			self coordinateSystem extent: aPoint].
	self hasDiagram
		ifTrue:[
			self updateDiagrams]