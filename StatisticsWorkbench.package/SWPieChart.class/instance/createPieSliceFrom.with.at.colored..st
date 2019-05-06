as yet unclassified
createPieSliceFrom: aKey with: aValue at: aPosition colored: aColor
	
	| newPieslice pointSet |
	
	newPieslice := SWPieSlice new.
	pointSet := OrderedCollection new.
	
	self registerPieslice: newPieslice; 
		setStartpointOf: newPieslice by: aPosition.
	self setEndpointOf: newPieslice by: aValue.
	
	newPieslice
			name: aKey;
			value: aValue;
			center: self center;
			color: aColor.
	
	pointSet add: newPieslice center; 
				add: newPieslice startpoint; 
				yourself.
			
	self generateOuterBorderOf: newPieslice with: aValue from: pointSet.
	
	pointSet add: newPieslice endpoint; yourself.
	
	newPieslice pointSet: pointSet; updateSlice

	