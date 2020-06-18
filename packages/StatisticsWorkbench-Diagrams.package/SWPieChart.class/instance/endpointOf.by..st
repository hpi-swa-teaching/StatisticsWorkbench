geometry
endpointOf: aPieSlice by: aValue

	aPieSlice endPoint: 
		(aPieSlice startPoint rotateBy: (self computeRadianFrom: aValue) about: self center)