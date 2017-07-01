as yet unclassified
addMarker: aMarker
	self markers isNil ifTrue: [self markers: OrderedCollection new].
	self markers add: aMarker.
	self addMorph: aMarker.
		