creation
createDatasetEditingSection

	^ self createDefaultPage
		add: self createDatasetDropdown;
		add: self createDatasetDisplay;
		add: self createDatasetSaveButton;
		yourself