as yet unclassified
initialize
	
	super initialize.
	
	self coordinateSystem: SWCoordinateSystem create.
	self dataPoints: Bag new.
	self makeTestData.
	self connected: true.
	self setVertices: self preprocessData.
	self color: self defaultColor;
		 borderWidth: 2;
		 borderColor: self defaultColor.
	
	self makeOpen.
	self openInWorld.
	self coordinateSystem addMorph: self.