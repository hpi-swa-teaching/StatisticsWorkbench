as yet unclassified
updateMarkers
		
	self areMarkersDrawable
		ifTrue: [self adjustStepInterval.
			self removeAllMarkers.
			self drawMarkers]