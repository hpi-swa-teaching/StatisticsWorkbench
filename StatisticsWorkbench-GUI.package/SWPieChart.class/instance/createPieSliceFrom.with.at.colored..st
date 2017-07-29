creation
createPieSliceFrom: aKey with: aValue at: aPosition colored: aColor
	
	| newPieslice pointSet |
	
	self flag: #fishy.
	
	newPieslice := SWPieSlice new.
	pointSet := OrderedCollection new.
	
	self add: newPieslice;
		 startpointOf: newPieslice by: aPosition.
	self endpointOf: newPieslice by: aValue.
	
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

	