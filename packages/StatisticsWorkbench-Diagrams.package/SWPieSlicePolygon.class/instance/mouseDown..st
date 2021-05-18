as yet unclassified
mouseDown: anEvent

	(anEvent yellowButtonPressed)
		ifTrue: [owner mouseDown: anEvent].
	anEvent hand waitForClicksOrDrag: self event: anEvent
