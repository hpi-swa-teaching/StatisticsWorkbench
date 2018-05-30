creation
createUpperPage

	^ PHPage new
		expand: true;	
		vertical: false;
		add: self createDatasetSelector;
		add: (PHPage column
					add: self createDatasetSelectionButtons;
					add: self createFunctionSelector);
		withLayout; 
		yourself