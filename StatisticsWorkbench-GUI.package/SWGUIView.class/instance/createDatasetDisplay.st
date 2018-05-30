as yet unclassified
createDatasetDisplay

	
	self datasetDisplay: (PHTextArea text: 'no dataset chosen').
	
	^ PHPage column
		expand: true;
		add: self datasetDisplay;
		add: ((PHButton label: 'Save') when: #clicked send: #chosenDatasetChanged to: self controller);
		add: ((PHButton label: 'Add Point') when: #clicked send: #showAddPointDialog to: self);
		withLayout;
		yourself.
	