testing
testIsInvisible 

	| diagram |
	diagram := SWDiagram new.
	
	self assert: [ diagram color = Color transparent ]