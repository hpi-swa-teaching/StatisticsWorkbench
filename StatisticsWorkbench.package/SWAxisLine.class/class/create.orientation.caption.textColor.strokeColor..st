as yet unclassified
create: aPosition orientation: anOrientation caption: aText textColor: aColor1 strokeColor: aColor2
	| instance |
	instance := SWAxisLine new.
	anOrientation = #horizontal
		ifTrue: [instance
				strokeMorph: (LineMorph
						from: aPosition x - 5 @ aPosition y
						to: aPosition x + 5 @ aPosition y
						color: aColor2
						width: 1).
			instance captionMorph: (TextMorph new contents: aText;
					 position: aPosition x - 28 @ (aPosition y - 8))]
		ifFalse: [instance
				strokeMorph: (LineMorph
						from: aPosition x @ (aPosition y - 5)
						to: aPosition x @ (aPosition y + 5)
						color: aColor2
						width: 1).
			instance captionMorph: (TextMorph new contents: aText;
					 position: aPosition x @ (aPosition y + 7))].
	instance textColor: aColor1.
	instance strokeColor: aColor2.
	instance addMorph: instance strokeMorph.
	instance addMorph: instance captionMorph.
	^ instance