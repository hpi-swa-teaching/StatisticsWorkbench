as yet unclassified
testIsInvisible 

	| functionGraph |
	functionGraph := SWLineChart new.
	
	self assert: [ functionGraph color = Color transparent ]
	
	