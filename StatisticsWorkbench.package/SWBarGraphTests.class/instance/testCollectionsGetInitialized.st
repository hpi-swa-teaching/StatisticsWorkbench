as yet unclassified
testCollectionsGetInitialized

	| barGraph |
	barGraph := SWBarGraph new.
	self assert: [ barGraph bars notNil and: [ barGraph bars size = 0 ] ]
	