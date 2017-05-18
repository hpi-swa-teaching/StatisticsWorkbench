as yet unclassified
updateOrientation 
	
	self orientation ~= self class defaultOrientation ifTrue: [self rotationDegrees: -90]
	ifFalse: [self rotationDegrees: 0].
	