creation
showDatasetCreationAlertFor: aDatasetName
	"bitte besseren Namen finden"
	(PHNotification text: 'The dataset: ', aDatasetName, ' was created')
		displayFor: 2000 onDismiss: [];
		addTo: self;
		extent: 1 @ 1;
		fullBounds;
		bottomRight: self layoutBounds bottomRight