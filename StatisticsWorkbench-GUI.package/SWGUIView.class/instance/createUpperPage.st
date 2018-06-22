creation
createUpperPage

	^ self createDefaultPage
		vertical: false;
		add: self createDatasetSelector;
		add: (PHPage column
					add: self createDatasetSelectionButtons;
					add: self createFunctionSelector);
		yourself