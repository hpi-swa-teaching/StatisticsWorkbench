updating
updateMarkers
		
	(self areMarkersDrawable)
		ifTrue: [	self adjustStepInterval.
				self removeAllMarkers.
				self drawMarkers]