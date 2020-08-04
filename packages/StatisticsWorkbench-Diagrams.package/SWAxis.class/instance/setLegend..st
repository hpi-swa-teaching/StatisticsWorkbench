accessing
setLegend: aText

	| morph |
	
	(self legend isNil)
		ifTrue: [morph := TextMorph new contents: aText;
					color: self color;
					yourself.
					
				self legend: morph;
					addMorph: morph;
					updateLegend]
		ifFalse: [self legend contents: aText]
