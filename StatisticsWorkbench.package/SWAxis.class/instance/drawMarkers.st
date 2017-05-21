initialization
drawMarkers
	| i |
	i := 0.
	
	[i < ((self max - self min) / self stepInterval)] 
		whileTrue: [
			| position |
			position := self startPoint + ((i * self stepInterval * self normedMarkerLength)@0).
			self addMorph: (SWAxisLine create: position orientation: #horizontal caption: (i * self stepInterval) printString).
			i := i + 1.
		].
		