creation
createNewDatasetFrom: aText named: aName 
	| datasetName |
	
	self flag: #addDimensionOption.
	self datasetCount: self datasetCount + 1.
	self datasets addLast: (SWData fromString: aText ofDataDimension: 2). 
	datasetName := aName. 
	(datasetName isEmpty) 
		ifTrue: [datasetName:=  'Dataset', self datasetCount]. 
	self view 
		createDatasetDropdownItem: self datasetCount named: datasetName; 
		showDatasetCreationAlertFor: datasetName
	
	
	
