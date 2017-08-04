geometry
endpointOf: aPieslice by: aValue

	aPieslice endpoint: 
		(aPieslice startpoint rotateBy: (self computeRadianFrom: aValue) about: self center)