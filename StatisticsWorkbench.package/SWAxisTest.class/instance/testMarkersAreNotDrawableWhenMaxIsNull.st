testing
testMarkersAreNotDrawableWhenMaxIsNull
	| axis |
	
	axis := SWAxis create.
	axis maximum: nil.
	self assert: axis areMarkersDrawable not