as yet unclassified
addCoordinateSystem
	self hasCoordinateSystem
		ifFalse: [
			self coordinateSystem: SWCoordinateSystem create.
			self addMorph: self coordinateSystem].
	^ self coordinateSystem