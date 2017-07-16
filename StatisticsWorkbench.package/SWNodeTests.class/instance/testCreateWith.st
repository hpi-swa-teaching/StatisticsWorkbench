as yet unclassified
testCreateWith

	| instructionBlock node |
	instructionBlock := [ true ]. 
	node := SWNode createWith: instructionBlock labelled: 'Unit Testing'.
	
	self assert: [ node notNil ].
	self assert: [ node instruction = instructionBlock ].
	self assert: [ node label = 'Unit Testing' ]