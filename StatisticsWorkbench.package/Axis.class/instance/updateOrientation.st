as yet unclassified
updateOrientation 
	
	self orientation = #vertical  ifTrue: [self rotationDegrees: -90]
	ifFalse: [self rotationDegrees: 0].
	