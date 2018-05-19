as yet unclassified
createUpperPage

	| upperPage |
	
	upperPage := PHPage new.
	upperPage
		expand: true;	
		vertical: false;
		add: self createDatasetSelector;
		add: (PHPage column
					add: self createDatasetSelectionButtons;
					add: self createFunctionSelector);
		withLayout.
	
	^upperPage 