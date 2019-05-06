testing
areMarkersInsideAxisBoundaries

	^ (self maximum notNil
		and: self minimum notNil
		and: self stepInterval notNil
		and: self startPoint notNil
		and: self endPoint notNil)