as yet unclassified
create: aPosition orientation: anOrientation caption: aText
	| instance |
	instance := SWAxisLine new.
	anOrientation = #horizontal
		ifTrue:
			[instance strokeMorph: (LineMorph from: (aPosition x - 5)@(aPosition y) to: (aPosition x + 5)@(aPosition y) color: Color green width: 1).]
		ifFalse:
			[instance strokeMorph: (LineMorph from: (aPosition x)@(aPosition y - 5) to: (aPosition x)@(aPosition y + 5) color: Color green width: 1).].

	instance addMorph: instance strokeMorph.
	instance captionMorph: (TextMorph new 
							contents: aText;
							position: (aPosition x)@(aPosition y + 7)).
	instance addMorph: instance captionMorph.
	^ instance.