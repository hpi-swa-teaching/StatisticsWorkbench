creation
createDatasetDisplay

	self datasetDisplay: (PHTextArea text: 'no dataset chosen').
	^ self createDefaultPage
		add: (PHScrollArea new
			policy: #(show scroll);
			content: self datasetDisplay);
		add: ((PHButton label: 'Add Point') when: #clicked send: #showAddPointDialog to: self);
		add: ((PHButton label: 'Save') when: #clicked send: #chosenDatasetChanged to: self controller;
					vResizing: #spaceFill);
		yourself