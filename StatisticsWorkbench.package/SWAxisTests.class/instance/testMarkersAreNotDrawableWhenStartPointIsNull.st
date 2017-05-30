tests
testMarkersAreNotDrawableWhenStartPointIsNull
	| axis |
	axis := SWAxis create.
	axis startPoint: nil.
	self assert: axis areMarkersDrawable not
	