creation
createPieSliceFrom: aSWVector at: aPosition colored: aColor

	| newPieSlice pointSet aKey aValue |
	
	aKey := aSWVector x.
	aValue := aSWVector y.
	
	newPieSlice := SWPieSlice new.
	newPieSlice vector: aSWVector.
	pointSet := OrderedCollection new.
	
	self add: newPieSlice.
	self startpointOf: newPieSlice by: aPosition.
	self endpointOf: newPieSlice by: aValue.
	
	newPieSlice
			name: aKey;
			value: aValue;
			center: self center.
			
	newPieSlice slice color: aColor.
	
	pointSet 
			add: newPieSlice center; 
			add: newPieSlice startPoint; 
			yourself.
			
	self generateOuterBorderOf: newPieSlice with: aValue from: pointSet.
	
	pointSet 
			add: newPieSlice endPoint; 
			yourself.
	
	newPieSlice 
			pointSet: pointSet; 
			updateSlice	
