event handling
mouseDown: anEvent

	(anEvent yellowButtonPressed)
		ifTrue: [owner removeFromData: self].
	anEvent hand waitForClicksOrDrag: self event: anEvent
