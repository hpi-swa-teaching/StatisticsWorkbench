accessing
legend: aText

	| morph |
	
	(self legend)
		ifNil: [morph := TextMorph new contents: aText;
					wrapFlag: true;
					color: self color;
					yourself.
					
				legend := morph.
				self
					addMorph: morph;
					updateLegend]
		ifNotNil: [self legend contents: aText]
