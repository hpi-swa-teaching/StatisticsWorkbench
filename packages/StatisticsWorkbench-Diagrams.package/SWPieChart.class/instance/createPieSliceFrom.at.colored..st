creation
createPieSliceFrom: aSWVector at: aPosition colored: aColor
	
	| newPieSlice edgePoints aKey aValue startPoint endPoint|
	
	aKey := aSWVector x.
	aValue := aSWVector y.
	
	newPieSlice := SWPieSlice new.
	newPieSlice vector: aSWVector.
	edgePoints := OrderedCollection new.
	
	self add: newPieSlice.
	startPoint := self startpointBy: aPosition.
	endPoint := self endpointFrom: startPoint by: aValue.
	
	newPieSlice
			name: aKey;
			value: (aValue / self accumulateValues * 100 asFloat roundTo: 1);
			center: self center;
			centerPoint: self center.
			
	newPieSlice slice color: aColor.
	
	edgePoints
			add: startPoint.
			
	edgePoints := edgePoints, (self generateOuterBorderFromStartPoint: startPoint withValue: aValue).

	edgePoints
			add: endPoint;
			yourself.

	newPieSlice 
			edgePoints: edgePoints;
			updateSlice

