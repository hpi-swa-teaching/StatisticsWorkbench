accessing
length: aLength

	self orientation = #horizontal
		ifTrue: [ self endPoint: self startPoint + (aLength @ 0) ]
		ifFalse: [ self startPoint: self endPoint + (0 @ aLength) ]