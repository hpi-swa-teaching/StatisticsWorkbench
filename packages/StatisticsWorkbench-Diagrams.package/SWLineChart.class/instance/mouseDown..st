event handling
mouseDown: anEvent

	anEvent hand waitForClicksOrDrag: self event: anEvent.
	self update