as yet unclassified
addCoordinateSystem
	
	| coord | 
	
	self hasCoordinateSystem
		ifFalse: [
			coord := SWCoordinateSystem create.
			coord addDependent: self.
			self coordinateSystem: coord.
			self bounds: self coordinateSystem bounds.
			self position: self coordinateSystem position.
			self addMorph: self coordinateSystem].
	^ self coordinateSystem