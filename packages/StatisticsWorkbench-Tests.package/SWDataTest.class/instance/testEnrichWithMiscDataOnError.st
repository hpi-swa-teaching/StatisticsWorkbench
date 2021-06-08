testing
testEnrichWithMiscDataOnError

	| data wrongDimension correctDimension|
	
	data := SWDataTest createSeeded.
	
	wrongDimension := ('miscColumn' -> #('miscColumnValue1' 'miscColumnValue2' 'miscColumnValue3' )) asOrderedCollection asDictionary.
	correctDimension := ('miscColumn' -> #('miscColumnValue1' 'miscColumnValue2' 'miscColumnValue3' 'miscColumnValue4')) asOrderedCollection asDictionary.
	
	self should: [data enrichWith: wrongDimension] raise: SWInvalidDimensionError.
	self shouldnt: [data enrichWith: correctDimension] raise: SWInvalidDimensionError.