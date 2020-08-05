accessing
legend: aText

	| morph |
	
	(self legend isNil)
		ifTrue: [morph := TextMorph new contents: aText;
					color: self color;
					yourself.
					
				legend := morph.
				self
					addMorph: morph;
					updateLegend]
		ifFalse: [self legend contents: aText]
