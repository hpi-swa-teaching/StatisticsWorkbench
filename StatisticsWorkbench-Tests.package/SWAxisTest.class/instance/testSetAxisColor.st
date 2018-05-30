testing
testSetAxisColor
	| axis color |
	
	axis := SWAxis create.
	color := Color wheel: 2.
	
	axis color: (color at: 1).
	self assert: axis borderColor = (color at: 1).
	axis markers do: [:marker | self assert: marker strokeMorph borderColor = (color at: 1)].
	
	axis color: (color at: 2).
	self assert: axis borderColor = (color at: 2).
	axis markers do: [:marker | self assert: marker strokeMorph borderColor = (color at: 2)].
	
	axis delete