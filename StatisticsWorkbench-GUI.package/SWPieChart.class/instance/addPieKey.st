adding/removing
addPieKey

	self addMorph: self pieKey.
	self pieKey drawKeyFor: self.
	self pieKey position: self topLeft.