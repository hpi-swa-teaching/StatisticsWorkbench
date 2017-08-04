tests
testMarkersAreDrawable
	| axis |
	axis := SWAxis create.
	self assert: axis areMarkersDrawable
	