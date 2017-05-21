as yet unclassified
updateTexts
	
	self submorphs do: [:a | (a isKindOf: TextMorph) ifTrue: [a delete.]].
	self drawLegend.
	self drawLabels.