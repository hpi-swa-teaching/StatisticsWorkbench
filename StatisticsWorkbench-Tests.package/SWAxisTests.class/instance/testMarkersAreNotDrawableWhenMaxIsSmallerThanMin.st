tests
testMarkersAreNotDrawableWhenMaxIsSmallerThanMin
	| axis |
	axis := SWAxis create.
	axis min: 10;
		 max: 0.
		
	self assert: axis areMarkersDrawable not
	