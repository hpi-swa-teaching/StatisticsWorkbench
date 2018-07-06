testing
testSetAxisColor
	| axis color |
	
	axis := SWAxis create.
	color := Color wheel: 2.
	
	axis color: (color first).
	self assert: axis borderColor = (color first).
	axis markers do: [:marker | self assert: marker strokeMorph borderColor = (color first)].
	
	axis color: (color second).
	self assert: axis borderColor = (color second).
	axis markers do: [:marker | self assert: marker strokeMorph borderColor = (color second)].
	
	axis delete