as yet unclassified
initialize
	super initialize.
	self barWidth: 5;
	color: Color transparent.
	self coordinateSystem notNil ifTrue: [self drawChart].
	self openInWorld
	