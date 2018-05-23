accessing
createNewDatasetFrom: aText
	| dropdownDataset |
	
	"evtl. ein Altert adden z.B.'created Dataset 2'"
	self datasets addLast: (SWData fromString: aText). 
	
	aText = ''
		ifTrue: [	dropdownDataset := (SWDropdownDataset label: 'dataset', self datasetCount). 
				dropdownDataset datasetIdentificationNumber: self datasetCount.
				dropdownDataset when: #clicked send: #updateChoosenDataset: to: self with: (dropdownDataset datasetIdentificationNumber).
				self datasetCount: self datasetCount + 1]
		ifFalse: [dropdownDataset := (SWDropdownDataset label: aText)].
	
	self datasetDropdown add: dropdownDataset. 
