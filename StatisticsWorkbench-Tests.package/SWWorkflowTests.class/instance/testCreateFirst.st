as yet unclassified
testCreateFirst
	
	| instructionBlock |
	instructionBlock := [ true ].
	self assert: [ (SWWorkflow createFirst: instructionBlock) first instruction = instructionBlock ]