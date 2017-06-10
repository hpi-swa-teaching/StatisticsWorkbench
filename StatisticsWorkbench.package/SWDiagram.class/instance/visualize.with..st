as yet unclassified
visualize: data with: diagram
	| emptydiag |
	emptydiag := (diagram new).
	diagram needsCoordinatesystem
		ifTrue: [
			emptydiag coordinateSystem: self addCoordinatesystem ].
	emptydiag dataset: data.
	self diagrams add: emptydiag.
	self addMorph: emptydiag.
	self updateDiagrams.