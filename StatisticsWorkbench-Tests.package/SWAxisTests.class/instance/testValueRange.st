tests
testValueRange

	| axis oldRange|
	axis := SWAxis create.
	oldRange := axis valueRange.
	axis min: axis min + 3.
	self assert: [(oldRange = axis valueRange) not]