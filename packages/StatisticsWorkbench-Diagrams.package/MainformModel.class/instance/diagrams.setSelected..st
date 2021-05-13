event-handling
diagrams: aNumber setSelected: aBool

	self diagramsSelection at: aNumber put: aBool.
	self changed: #diagramsSelection.