as yet unclassified
addCoordinatesystem
	self hasCoordinatesystem
		ifFalse: [
			self coordinatesystem: SWCoordinateSystem create.
			self addMorph: self coordinatesystem].
	^ self coordinatesystem