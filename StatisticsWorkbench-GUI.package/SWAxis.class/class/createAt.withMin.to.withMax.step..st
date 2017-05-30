defaults
createAt: startPoint withMin: min to: endPoint withMax: max step: step

	^ (SWAxis 
		vertices: (Array with: startPoint with: endPoint) color: self defaultColor borderWidth: self defaultBorderWidth borderColor: self defaultBorderColor)
			min: min;
			max: max;
			stepInterval: step;
			makeForwardArrow;
			drawMarkers;
			openInWorld.