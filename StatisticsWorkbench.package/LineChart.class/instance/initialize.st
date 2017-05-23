as yet unclassified
initialize
	
	super initialize.
	
	self connected: true.
	self dataPoints: Bag new.
	self makeTestData.
	self setVertices: self preprocessData.
	self color: self defaultColor;
		 borderWidth: 2;
		 borderColor: self defaultColor.
	
	self makeOpen.
	self openInWorld.