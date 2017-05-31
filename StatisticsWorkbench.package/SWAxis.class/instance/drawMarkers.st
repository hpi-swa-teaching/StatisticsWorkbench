initialization
drawMarkers
	| i |
	i := 0.
	[i - 1 < (self valueRange / self stepInterval)]
		whileTrue: [| position | self orientation = #horizontal
				ifTrue: [position := self startPoint + (i * self stepInterval * self normedMarkerLength @ 0).
					self
						addMorph: (SWAxisLine
								create: position
								orientation: #vertical
								caption: (self min + (i * self stepInterval)) printString).
					i := i + 1]
				ifFalse: [position := self startPoint + (0 @ ((-1) * i * self stepInterval * self normedMarkerLength)).
					self
						addMorph: (SWAxisLine
								create: position
								orientation: #horizontal
								caption: (self min + (i * self stepInterval)) printString).
					i := i + 1]]