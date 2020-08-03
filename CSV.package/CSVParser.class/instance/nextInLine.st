parsing
nextInLine
	| next |
	next := stream next.
	^ (next = Character cr or: [next = Character lf])
		ifTrue:	[stream back. nil]
		ifFalse:	[next]