as yet unclassified
initialize
	
	| pos |
	
	pos := 1.
	
	super initialize.
	
	self radius: 200.
	self center: 500 @ 500.
	self pieslices: OrderedCollection new.
	self makeTestData.
	
	self data keysAndValuesDo:  [:aKey :aValue | self createPieSliceFrom: aKey with: aValue at: pos. pos := pos + 1].
	