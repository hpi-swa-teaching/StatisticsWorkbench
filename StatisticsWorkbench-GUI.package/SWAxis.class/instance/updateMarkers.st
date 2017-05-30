as yet unclassified
updateMarkers
	self areMarkersDrawable
		ifTrue: [self
					submorphsDo: [:morph | morph delete];
				 	drawMarkers]