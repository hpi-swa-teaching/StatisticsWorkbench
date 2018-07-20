showing
showDatasetCreationMessageFor: aDatasetName

	(PHNotification text: 'The dataset: ', aDatasetName, ' was created')
		displayFor: 2000 onDismiss: [];
		addTo: self;
		fullBounds;
		bottomRight: self layoutBounds bottomRight