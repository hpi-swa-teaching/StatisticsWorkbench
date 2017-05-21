as yet unclassified
updateLabel
	
	self submorphs do: [:a | (a isKindOf: TextMorph) ifTrue: [a delete.]].
	self drawLabels.