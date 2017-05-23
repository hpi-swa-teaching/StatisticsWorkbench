as yet unclassified
create: aPosition orientation: anOrientation caption: aText
	| instance |
	instance := SWAxisLine new.
	instance addMorph: (LineMorph from: (aPosition x)@(aPosition y - 5) to: (aPosition x)@(aPosition y + 5) color: Color green width: 1).
	instance addMorph: (TextMorph new 
							contents: aText;
							position: (aPosition x)@(aPosition y + 7)).
	^ instance.