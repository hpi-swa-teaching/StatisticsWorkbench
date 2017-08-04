tests
testSetInvalidMaxOrMin
	| axis |
	axis := SWAxis create.
	
	"check invalid max"
	axis min: 0.
	self should: [axis max: 0] raise: SWInvalidArgumentError.
	self should: [axis max: -1] raise: SWInvalidArgumentError.
	
	"check invalid min"
	axis min: -10.
	axis max: 0.
	self should: [axis min: 0] raise: SWInvalidArgumentError.
	self should: [axis min: 1] raise: SWInvalidArgumentError.