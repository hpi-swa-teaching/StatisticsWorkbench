testing
areMarkersDrawable

	(self max notNil
		and: self min notNil
		and: self stepInterval notNil
		and: self startPoint notNil
		and: self endPoint notNil)
			ifTrue: [	^ self max > self min
						and: (self stepInterval negative) not]
	 		ifFalse: [^ false]