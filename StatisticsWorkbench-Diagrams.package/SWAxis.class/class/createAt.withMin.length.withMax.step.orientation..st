instance creation
createAt: startPoint withMin: min length: length withMax: max step: step orientation: orientation
	| endpoint |
	
	(orientation = #horizontal)
		ifTrue: [endpoint := (length @ 0)]
		ifFalse: [endpoint := (0 @ (length negated))].
	
	^ (SWAxis 
			vertices: (Array with: startPoint with: startPoint + endpoint) color: self defaultColor borderWidth: self defaultBorderWidth borderColor: self defaultBorderColor)
			textVisibility: self defaultTextVisibility;
			rasterVisibility: self defaultRasterVisibility;
			orientation: orientation;
			minimum: min;
			maximum: max;
			stepInterval: step;
			makeForwardArrow;
			updateMarkers;
			yourself