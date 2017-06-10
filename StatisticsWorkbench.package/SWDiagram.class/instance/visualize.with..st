as yet unclassified
visualize: data with: diagram
	| emptydiag |
	emptydiag := (diagram new).
	diagram needsCoordinateSystem
		ifTrue: [
			emptydiag coordinateSystem: self addCoordinateSystem ].
	emptydiag dataset: data.
	self diagrams add: emptydiag.
	self addMorph: emptydiag.
	self updateDiagrams.