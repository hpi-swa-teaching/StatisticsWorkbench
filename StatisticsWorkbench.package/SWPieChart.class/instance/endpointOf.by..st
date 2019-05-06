geometry
endpointOf: aPieSlice by: aValue

	aPieSlice endpoint: 
		(aPieSlice startpoint rotateBy: (self computeRadianFrom: aValue) about: self center)