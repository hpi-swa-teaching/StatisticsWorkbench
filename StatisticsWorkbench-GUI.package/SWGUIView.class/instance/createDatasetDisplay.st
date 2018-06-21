creation
createDatasetDisplay

	self datasetDisplay: (PHTextArea text: 'no dataset chosen').
	^ PHPage column
		expand: true;
		add: self datasetDisplay;
		add: ((PHButton label: 'Add Point') when: #clicked send: #showAddPointDialog to: self);
		add: ((PHButton label: 'Save') when: #clicked send: #chosenDatasetChanged to: self controller);
		withLayout;
		yourself