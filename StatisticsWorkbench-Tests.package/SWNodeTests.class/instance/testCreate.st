as yet unclassified
testCreate

	| instructionBlock node |
	instructionBlock := [ true ]. 
	node := SWNode create: instructionBlock.
	
	self assert: [ node notNil ].
	self assert: [ node instruction = instructionBlock ]