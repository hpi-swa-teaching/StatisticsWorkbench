tests
testMarkersAreNotDrawableWhenStepIntervalIsNull
	| axis |
	axis := SWAxis create.
	axis stepInterval: nil.
	self assert: axis areMarkersDrawable not
	