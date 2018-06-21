testing
areMarkersInsideAxisBoundaries

	^ (self max notNil
		and: self min notNil
		and: self stepInterval notNil
		and: self startPoint notNil
		and: self endPoint notNil)