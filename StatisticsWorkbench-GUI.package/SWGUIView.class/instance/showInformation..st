creation
showInformation: aFunction
	
	(PHNotification text: 'The ', aFunction, ' of the chosen dataset is: ', (self controller calculateMinMaxOrMedian: aFunction))
		displayFor: 2000 onDismiss: [];
		addTo: self;
		extent: 1 @ 1;
		fullBounds;
		bottomRight: self layoutBounds bottomRight