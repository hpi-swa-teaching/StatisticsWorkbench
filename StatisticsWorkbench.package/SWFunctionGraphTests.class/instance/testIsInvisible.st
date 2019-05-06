as yet unclassified
testIsInvisible 

	| functionGraph |
	functionGraph := SWFunctionGraph new.
	
	self assert: [ functionGraph color = Color transparent ]
	
	