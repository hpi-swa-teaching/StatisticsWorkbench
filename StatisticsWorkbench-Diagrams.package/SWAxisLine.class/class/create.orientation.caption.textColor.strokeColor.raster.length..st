instance creation
create: aPosition orientation: anOrientation caption: aText textColor: aColor1 strokeColor: aColor2 raster: aBoolean length: aLength
	| instance |
	
	self flag: #fishy.
	instance := SWAxisLine new.
	(anOrientation = #horizontal)
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
					 																position: (aPosition x - 4) @ (aPosition y + 7))].
				
	instance textColor: aColor1.
	instance strokeColor: aColor2.
	instance addMorph: instance strokeMorph.
	instance addMorph: instance captionMorph.
	
	aBoolean ifTrue:[
		(anOrientation = #horizontal)
			ifTrue: [	instance rasterMorph: (LineMorph
						from: aPosition
						to: aPosition + (aLength @ 0)
						color: Color gray
						width: 1)]
			ifFalse: [instance rasterMorph: (LineMorph
						from: aPosition
						to: aPosition - (0 @ aLength)
						color: Color gray
						width: 1)].
		instance rasterColor: Color gray.
		instance addMorph: instance rasterMorph behind: instance strokeMorph].
	
	^ instance