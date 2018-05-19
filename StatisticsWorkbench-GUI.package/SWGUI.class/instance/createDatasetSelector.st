as yet unclassified
createDatasetSelector

	| datasetSelector |
	
	datasetSelector := PHPage new.
	datasetSelector 
		expand: true;
		vertical: true;
		add: self createDatasetDropdownButton;
		add: self createDatasetDisplay;
		withLayout;
		addStyleClass: #withPadding.

	
	^datasetSelector 