as yet unclassified
initialize
	
	| pos wheelColors |
	
	
	pos := 1.
	
	super initialize.
	
	self radius: 200.
	self center: (self radius @ self radius) + 100.
	self extent: (self radius @ self radius) + 100 *2.
	self color: Color transparent.
	self pieslices: OrderedCollection new.
	self makeTestData.	
	self openInWorld.
	
	wheelColors := Color wheel: self data size.
	
	self data keysAndValuesDo:  [:aKey :aValue | self createPieSliceFrom: aKey with: aValue at: pos colored: 													(wheelColors at: pos). pos := pos + 1].