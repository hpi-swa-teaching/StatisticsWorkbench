creation
showInformation: aValue
	
	(PHNotification text: 'The ', aValue, ' of the chosen dataset is: ', (self controller calculateMinMaxOrMedian: aValue))
		displayFor: 2000 onDismiss: [];
		addTo: self;
		extent: 1 @ 1;
		fullBounds;
		bottomRight: self layoutBounds bottomRight