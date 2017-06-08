initialization
drawMarkers
	| i textcolor |
	i := 0.
	self textColor isNil ifTrue: [self textColor: self class defaultTextColor].
	self textVisibility
		ifTrue: [textcolor := self textColor]
		ifFalse: [textcolor := Color transparent].
	[i - 1 < (self valueRange / self stepInterval)]
		whileTrue: [
			| position orientation | 
			
			self orientation = #horizontal
				ifTrue: [position := self startPoint + (i * self stepInterval * self normedMarkerLength @ 0).
						orientation := #vertical]
				ifFalse: [position := self startPoint + (0 @ ((-1) * i * self stepInterval * self normedMarkerLength)).
						orientation := #horizontal].
				self
					addMorph: (SWAxisLine
						create: position
						orientation: orientation
						caption: (self min + (i * self stepInterval)) printString
						textColor: textcolor
						strokeColor: self borderColor).
				i := i + 1]