creation
createDatasetDisplay

	self datasetDisplay: (PHTextArea text: 'no dataset chosen').
	^ PHScrollArea new
		policy: #(show scroll);
		content: self datasetDisplay;
		yourself