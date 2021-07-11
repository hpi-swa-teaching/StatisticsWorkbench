as yet unclassified
createLabel: aString

	| textMorph  |

	textMorph := TextMorph new contents: aString;
					wrapFlag: true;
					color: self colorTheme axisTextColor;
					yourself.
	self spiderNet addMorph: textMorph.
	
	^ textMorph
	

	