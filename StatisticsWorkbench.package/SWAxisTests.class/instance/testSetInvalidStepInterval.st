tests
testSetInvalidStepInterval
	| axis |
	axis := SWAxis create.
	
	"check invalid stepInterval"
	self should: [axis stepInterval: nil] raise: SWInvalidArgumentError.
	self should: [axis stepInterval: 0] raise: SWInvalidArgumentError.
	self should: [axis stepInterval: -1] raise: SWInvalidArgumentError.