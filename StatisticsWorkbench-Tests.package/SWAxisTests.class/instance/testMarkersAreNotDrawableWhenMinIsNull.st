tests
testMarkersAreNotDrawableWhenMinIsNull
	| axis |
	axis := SWAxis create.
	axis min: nil.
	self assert: axis areMarkersDrawable not
	