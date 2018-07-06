testing
testSetAxisTextColor
	| axis color |
	
	axis := SWAxis create.
	color := Color wheel: 2.
	
	axis textColor: (color first).
	axis markers do: [:marker | self assert: marker captionMorph color = (color first)].
	
	axis textColor: (color second).
	axis markers do: [:marker | self assert: marker captionMorph color = (color second)].
	
	axis textVisibility: false.
	axis markers do: [:marker | self assert: marker captionMorph color = Color transparent].
	
	axis textVisibility: true.
	axis submorphsDo: [:morph | self assert: morph captionMorph color = (color second)].
	
	axis delete