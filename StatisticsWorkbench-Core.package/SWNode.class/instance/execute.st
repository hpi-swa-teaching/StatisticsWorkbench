as yet unclassified
execute

	| input |
	input := self input.
	
	self instruction numArgs ~= input size
		ifTrue: [ SWInvalidArgumentError signal: 'Invalid argument count to execute instruction' ].
	
	self instruction valueWithArguments: input