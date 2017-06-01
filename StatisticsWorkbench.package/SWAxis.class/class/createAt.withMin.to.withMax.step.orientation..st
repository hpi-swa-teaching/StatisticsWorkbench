defaults
createAt: startPoint withMin: min to: endPoint withMax: max step: step orientation: orientation

	^ (SWAxis 
		vertices: (Array with: startPoint with: endPoint) color: self defaultColor borderWidth: self defaultBorderWidth borderColor: self defaultBorderColor)
			textVisibility: true;
			orientation: orientation;
			min: min;
			max: max;
			stepInterval: step;
			makeForwardArrow;
			updateMarkers;
			yourself