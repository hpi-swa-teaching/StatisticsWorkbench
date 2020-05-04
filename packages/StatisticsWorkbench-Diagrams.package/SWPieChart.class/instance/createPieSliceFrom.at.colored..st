creation
createPieSliceFrom: aVector at: aPosition colored: aColor
	| newPieSlice pointSet aKey aValue |
	
	aKey := aVector x.
	aValue := aVector y.
	
	newPieSlice := SWPieSlice new.
	newPieSlice date: aVector.
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
			add: newPieSlice startpoint; 
			yourself.
			
	self generateOuterBorderOf: newPieSlice with: aValue from: pointSet.
	
	pointSet 
			add: newPieSlice endpoint; 
			yourself.
	
	newPieSlice 
			pointSet: pointSet; 
			updateSlice	