accessing
length: aLength
	| direction |
	length := aLength.
	self orientation = #horizontal
		ifTrue: [direction := (aLength@0).
				self endPoint: (self startPoint + direction)]
		ifFalse: [direction := (0@aLength).
				self startPoint: (self endPoint + direction)]