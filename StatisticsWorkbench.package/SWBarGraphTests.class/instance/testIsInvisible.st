as yet unclassified
testIsInvisible 

	| barGraph |
	barGraph := SWBarGraph new.
	
	self assert: [ barGraph color = Color transparent ]