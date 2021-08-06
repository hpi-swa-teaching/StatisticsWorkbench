creation
createLegend: aText

	| morph |

	morph := TextMorph new contents: aText;
					wrapFlag: true;
					color: self color;
					yourself.
	self legend: morph;
		addMorph: morph