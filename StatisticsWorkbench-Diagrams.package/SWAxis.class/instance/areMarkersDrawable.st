testing
areMarkersDrawable

	(self areMarkersInsideAxisBoundaries)
			ifTrue: [	^ self max > self min
						and: (self stepInterval negative) not]
	 		ifFalse: [^ false]