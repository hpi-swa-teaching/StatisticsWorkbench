testing
testMarkersAreNotDrawableWhenMinIsNull

	| axis |
	
	axis := SWAxis create.
	axis minimum: nil.
	self assert: axis areMarkersDrawable not
