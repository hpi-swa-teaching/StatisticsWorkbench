creation
createPieSliceFrom: aKey with: aValue at: aPosition colored: aColor
	
	| newPieSlice pointSet |
	
	self flag: #fishy.
	
	newPieSlice := SWPieSlice new.
	pointSet := OrderedCollection new.
	
	self add: newPieSlice.
	self startpointOf: newPieSlice by: aPosition.
	self endpointOf: newPieSlice by: aValue.
	
	newPieSlice
			name: aKey;
			value: aValue;
			center: self center.
			
	newPieSlice slice color: aColor.
	
	pointSet add: newPieSlice center; 
				add: newPieSlice startpoint; 
				yourself.
			
	self generateOuterBorderOf: newPieSlice with: aValue from: pointSet.
	
	pointSet add: newPieSlice endpoint; yourself.
	
	newPieSlice pointSet: pointSet; updateSlice

	