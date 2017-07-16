as yet unclassified
createFirstNodeWith: anInstructionBlock

	self nodes size = 0
		ifFalse: [ SWInvalidArgumentError signal: 'You already have nodes. Therefore, you can not create the first one.' ].
		
	self assert: [ false ]