as yet unclassified
updateStep
	
	self submorphs do: [:a | (a isKindOf: PolygonMorph) ifTrue: [a delete.]].
	self drawSteps.