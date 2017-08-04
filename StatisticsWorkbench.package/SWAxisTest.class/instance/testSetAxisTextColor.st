tests
testSetAxisTextColor
	| axis color |
	axis := SWAxis create.
	color := Color wheel: 2.
	
	axis textColor: (color at: 1).
	axis markers do: [:marker | self assert: marker captionMorph color = (color at: 1)].
	
	axis textColor: (color at: 2).
	axis markers do: [:marker | self assert: marker captionMorph color = (color at: 2)].
	
	axis textVisibility: false.
	axis markers do: [:marker | self assert: marker captionMorph color = Color transparent].
	
	axis textVisibility: true.
	axis submorphsDo: [:morph | self assert: morph captionMorph color = (color at: 2)].
	
	axis delete.
