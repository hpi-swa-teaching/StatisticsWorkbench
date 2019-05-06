adding/removing
addCoordinateSystem: aSWCoordinateSystem
	
	self coordinateSystem: aSWCoordinateSystem.
	self bounds: self coordinateSystem bounds.
	self position: self coordinateSystem position.
	self addMorph: aSWCoordinateSystem