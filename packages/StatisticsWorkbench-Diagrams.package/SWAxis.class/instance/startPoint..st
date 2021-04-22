accessing
startPoint: aPoint
	
	(aPoint isNil)
		ifTrue: [SWInvalidArgumentError signal: 'Start point must be set.'].
	
	self vertices at: 1 put: aPoint.
	self computeBounds;
		update
