tests
testMarkersAreNotDrawableWhenEndPointIsNull
	| axis |
	axis := SWAxis create.
	axis endPoint: nil.
	self assert: axis areMarkersDrawable not
	