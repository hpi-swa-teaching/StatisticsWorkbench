testing
testMarkersAreNotDrawableWhenEndPointIsNull

	| axis |
	
	axis := SWAxis create.
	self should: [axis endPoint: nil] raise: SWInvalidArgumentError
