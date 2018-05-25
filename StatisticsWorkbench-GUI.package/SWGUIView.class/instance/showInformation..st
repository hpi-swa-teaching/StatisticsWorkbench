as yet unclassified
showInformation: aValue
	
	(PHNotification text: 'The ', aValue, ' of the choosen dataset is: ', (self controller calculateMinMaxOrMedian: aValue))
		displayFor: 3000
		onDismiss: [];
		addTo: self;
		extent: 1 @ 1;
		fullBounds;
		bottomRight: self layoutBounds bottomRight - (PHWidget spacing * 3) asPoint.