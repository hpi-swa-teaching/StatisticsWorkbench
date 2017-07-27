updating
updateMarkers
	self areMarkersDrawable
		ifTrue: [	self removeAllMarkers.
				self addAllMarkers]