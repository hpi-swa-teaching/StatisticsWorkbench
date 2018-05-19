as yet unclassified
createDatasetSelectionButtons

	| page refreshButton newButton  |
	
	page := PHPage new.
	refreshButton := PHButton label: 'Refresh'.
	newButton := PHButton label: 'new'.
	
	page
		expand: true;
		vertical: false;
		addStyleClass: #withPadding;
		add: refreshButton;
		add: newButton;
		withLayout.
	
	^page 