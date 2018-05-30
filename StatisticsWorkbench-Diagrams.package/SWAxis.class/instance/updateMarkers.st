updating
updateMarkers

	(self areMarkersDrawable)
		ifTrue: [	self removeAll.
				self drawMarkers]