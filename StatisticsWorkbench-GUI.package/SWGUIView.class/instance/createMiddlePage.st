creation
createMiddlePage

	^ self createDefaultPage
		vertical: false;
		add: self createDatasetEditingSection;
		add: self createFunctionSelector;
		yourself