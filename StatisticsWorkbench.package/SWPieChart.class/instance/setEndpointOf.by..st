as yet unclassified
setEndpointOf: aPieslice by: aValue

	aPieslice endpoint: 
		(aPieslice startpoint rotateBy: (self computeRadianFrom: aValue) about: self center)