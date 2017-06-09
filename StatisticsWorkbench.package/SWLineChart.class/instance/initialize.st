as yet unclassified
initialize
	
	super initialize.
	
	self dataPoints: Bag new.
	self connected: true.
	self color: self defaultColor;
		 borderWidth: 2;
		 borderColor: self defaultColor.
	self openInWorld.
	self makeOpen.