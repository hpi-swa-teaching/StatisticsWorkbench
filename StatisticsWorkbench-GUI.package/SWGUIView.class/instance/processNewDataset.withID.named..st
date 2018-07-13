creation
processNewDataset: aDatasetString withID: aDatasetIdentificationNumber named: aName
	self 
		createDatasetDropdownItem: aDatasetIdentificationNumber named: aName; 
		showDatasetCreationMessageFor: aName;
		updateDatasetDisplay: aDatasetString