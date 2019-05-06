initialization
initialize

	super initialize.
	self barColor: self class defaultColor.
	self bars: OrderedCollection new