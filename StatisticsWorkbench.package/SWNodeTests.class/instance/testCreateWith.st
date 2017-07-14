as yet unclassified
testCreateWith

	| instructionBlock node |
	instructionBlock := [ true ]. 
	node := SWNode create: instructionBlock with: 'Unit Testing'.
	
	self assert: [ node notNil ].
	self assert: [ node instruction = instructionBlock ].
	self assert: [ node label = 'Unit Testing' ]