as yet unclassified
drawLegend

	|t|
	t := TextMorph new contents: self legend.
	t position: self positionLegend.
	self addMorph: t.