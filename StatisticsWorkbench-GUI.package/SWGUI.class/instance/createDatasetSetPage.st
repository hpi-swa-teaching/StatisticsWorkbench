as yet unclassified
createDatasetSetPage

	| page saveButton cancelButton  |
	
	page := PHPage row.
	saveButton := PHButton label: 'Save'.
	cancelButton := PHButton label: 'Cancel'.
	
	page
		expand: true;
		addStyleClass: #withPadding;
		add: saveButton;
		add: cancelButton;
		withLayout.
	
	^page 