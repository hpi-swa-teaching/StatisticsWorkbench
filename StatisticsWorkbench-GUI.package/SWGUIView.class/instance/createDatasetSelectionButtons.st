creation
createDatasetSelectionButtons
	| refreshButton newButton |
	
	refreshButton := PHButton label: 'Refresh'.
	newButton := (PHButton label: 'new')
						when: #clicked send: #showNewDatasetDialog to: self;
						yourself.
	^ PHPage new
		expand: true;
		vertical: false;
		addStyleClass: #withPadding;
		add: refreshButton;
		add: newButton;
		withLayout;
		yourself