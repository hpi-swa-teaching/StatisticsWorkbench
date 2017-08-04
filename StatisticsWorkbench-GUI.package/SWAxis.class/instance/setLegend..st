accessing
setLegend: aText
	self legend isNil
			ifTrue: [
				self legend: (TextMorph new contents: aText).
				self addMorph: legend.
				self updateLegend]
			ifFalse:[
				self legend contents: aText
				]