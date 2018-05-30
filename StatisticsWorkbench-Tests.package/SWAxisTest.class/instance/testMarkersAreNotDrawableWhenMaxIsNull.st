testing
testMarkersAreNotDrawableWhenMaxIsNull
	| axis |
	
	axis := SWAxis create.
	axis max: nil.
	self assert: axis areMarkersDrawable not