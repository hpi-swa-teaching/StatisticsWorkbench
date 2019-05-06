accessing
startPoint: aPoint
	
	aPoint isNil 
		ifTrue: [ SWInvalidArgumentError signal: 'Startpoint must be set.'].
	
	self vertices at: 1 put: aPoint.
	self computeBounds;
		update
