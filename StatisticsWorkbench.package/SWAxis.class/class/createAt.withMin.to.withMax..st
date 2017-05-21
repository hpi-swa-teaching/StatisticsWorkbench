defaults
createAt: startPoint withMin: min to: endPoint withMax: max
	| valueRange length |
	valueRange := max - min.
	length := startPoint dist: endPoint.
	
	^ (SWAxis 
		vertices: (Array with: startPoint with: endPoint) color: self defaultColor borderWidth: self defaultBorderWidth borderColor: self defaultBorderColor)
			startPoint: startPoint;
			endPoint: endPoint;
			min: min;
			max: max;
			valueRange: max - min;
			normedMarkerLength: length / valueRange;
			stepInterval: 5;
			makeForwardArrow;
			drawMarkers;
			openInWorld.