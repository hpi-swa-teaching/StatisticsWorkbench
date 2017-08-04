tests
testAtIndex

	self assert: (self data atIndex: 1) = (SWDate fromArray: #(0 1)).
	self assert: (self data atIndex: 2) = (SWDate fromArray: #(1 1)).
	self assert: (self data atIndex: 3) = (SWDate fromArray: #(1 3)).
	self assert: (self data atIndex: 4) = (SWDate fromArray: #(3 0)).
	
	self should: [ data atIndex: 0 ] raise: SWInvalidArgumentError.
	self should: [ data atIndex: 5 ] raise: SWInvalidArgumentError 