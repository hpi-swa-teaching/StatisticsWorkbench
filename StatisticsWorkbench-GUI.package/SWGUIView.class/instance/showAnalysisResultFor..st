showing
showAnalysisResultFor: aFunction
	
	(PHNotification text: 'The ', aFunction onlyLetters, ' of the chosen dataset is: ', (self controller analyseDatasetWith: aFunction))
		displayFor: 2000 onDismiss: [];
		addTo: self;
		extent: (1 @ 1);
		fullBounds;
		bottomRight: self layoutBounds bottomRight