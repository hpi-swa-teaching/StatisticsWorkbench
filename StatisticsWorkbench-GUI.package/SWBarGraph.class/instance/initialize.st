as yet unclassified
initialize
	super initialize.
	self bars: OrderedCollection new.
	
	
	
	
	self flag: #fishy.
	self barWidth: 5;
	color: Color transparent.
	self coordinateSystem notNil ifTrue: [self drawChart]
	