defaults
createAt: startPoint withMin: min to: endPoint withMax: max

	^ (SWAxis 
		vertices: (Array with: startPoint with: endPoint) color: self defaultColor borderWidth: self defaultBorderWidth borderColor: self defaultBorderColor)
			min: min;
			max: max;
			valueRange: max - min;
			stepInterval: 5;
			makeForwardArrow;
			drawMarkers;
			openInWorld.