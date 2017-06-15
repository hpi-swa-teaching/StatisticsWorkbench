as yet unclassified
addCoordinateSystem
	self hasCoordinateSystem
		ifFalse: [
			self coordinateSystem: SWCoordinateSystem create.
			self bounds: self coordinateSystem bounds.
			self position: self coordinateSystem position.
			self addMorph: self coordinateSystem].
	^ self coordinateSystem