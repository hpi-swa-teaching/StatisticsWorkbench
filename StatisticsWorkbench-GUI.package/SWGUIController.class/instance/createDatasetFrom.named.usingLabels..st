creation
createDatasetFrom: aText named: aName usingLabels: useLabels
	| datasetName dataset |
	
	useLabels 
		ifTrue: [dataset := SWDataLabeled fromString: aText ofDataDimension: 2]
		ifFalse: [dataset := SWDataUnlabeled fromString: aText ofDataDimension: 2].
	self datasets addLast: dataset. 
	datasetName := aName. 
	(datasetName isEmpty) 
		ifTrue: [datasetName :=  'Dataset', self datasetCount]. 
	self updateChosenDataset: self datasetCount. 
	self view 
		createDatasetDropdownItem: self datasetCount named: datasetName; 
		showDatasetCreationMessageFor: datasetName
	
	
	
