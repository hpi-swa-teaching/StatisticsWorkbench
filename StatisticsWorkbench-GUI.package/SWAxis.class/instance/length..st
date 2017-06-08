accessing
length: aLength
	| direction |
	orientation = #horizontal
		ifTrue: [direction := ((aLength)@(0))]
		ifFalse: [direction := ((0)@(-1*aLength))].
	length:= aLength.
	self endPoint: (self startPoint + direction)