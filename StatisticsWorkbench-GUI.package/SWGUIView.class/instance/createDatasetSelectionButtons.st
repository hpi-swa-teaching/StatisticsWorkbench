creation
createDatasetSelectionButtons
	
	^ (PHButton label: 'new')
						when: #clicked send: #showNewDatasetDialog to: self;
						yourself