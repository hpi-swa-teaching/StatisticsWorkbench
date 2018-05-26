as yet unclassified
createDatasetDisplay

	
	self datasetDisplay: (PHLabel text: 'no dataset choosen').
	
	^ PHPage column
		expand: true;
		add: self datasetDisplay;
		add: (PHButton label: 'Save');
		add: ((PHButton label: 'Add Point') when: #clicked send: #showAddPointDialog to: self);
		withLayout;
		yourself.
	