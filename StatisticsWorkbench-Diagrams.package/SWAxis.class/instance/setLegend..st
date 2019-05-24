accessing
setLegend: aText

	(self legend isNil)
		ifTrue: [	self legend: (TextMorph new contents: aText; color: self color).
				self addMorph: legend.
				self updateLegend]
		ifFalse: [self legend contents: aText]