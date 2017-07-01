as yet unclassified
updateMarkers
	self areMarkersDrawable
		ifTrue: [	self markers notNil ifTrue: [self markers do: [:morph | morph delete]].
				self	markers: OrderedCollection new;
				 	drawMarkers]