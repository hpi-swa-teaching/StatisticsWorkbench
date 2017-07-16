as yet unclassified
createFirst: anInstructionBlock labelled: aString

	self nodes size = 0
		ifFalse: [ SWInvalidArgumentError signal: 'You already have nodes in your colleciton. Therefore you can not add a first node.' ].
		
	self createWith: anInstructionBlock after: nil labelled: aString