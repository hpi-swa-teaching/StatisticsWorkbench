initialization
initialize

	super initialize.
	self pointColor: self class defaultColor.
	self dataPoints: OrderedCollection new
