tests
testMarkersAreNotDrawableWhenValueRangeEqualsZero
	| axis |
	axis := SWAxis create.
	axis min: 0;
		 max: 0.
		
	self assert: axis areMarkersDrawable not
	