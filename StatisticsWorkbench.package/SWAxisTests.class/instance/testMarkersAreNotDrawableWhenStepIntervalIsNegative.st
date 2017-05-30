tests
testMarkersAreNotDrawableWhenStepIntervalIsNegative
	| axis |
	axis := SWAxis create.
	axis stepInterval: -1.
	self assert: axis areMarkersDrawable not
	