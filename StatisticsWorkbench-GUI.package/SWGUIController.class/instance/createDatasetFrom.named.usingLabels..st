creation
createDatasetFrom: aText named: aName usingLabels: useLabels
	| datasetName dataset |
	
	useLabels 
		ifTrue: [dataset := SWDataLabeled fromString: aText ofDataDimension: 2]
		ifFalse: [dataset := SWDataUnlabeled fromString: aText ofDataDimension: 2].
	self datasets add: dataset. 

	(aName isEmpty) 
		ifTrue: [datasetName := 'Dataset', self datasetCount]
		ifFalse: [datasetName := aName].

	self updateChosenDataset: self datasetCount named: datasetName. 
	self view
		createDatasetDropdownItem: self datasetCount named: datasetName; 
		showDatasetCreationMessageFor: datasetName