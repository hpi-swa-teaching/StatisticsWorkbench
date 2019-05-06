as yet unclassified
updateMarkers
	self areMarkersDrawable
		ifTrue: [	self removeAll.
				self drawMarkers]