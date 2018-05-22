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
	"dropdownDataset datasetIdentificationNumber: self datasetCount.
	dropdownDataset when: #clicked send: #updateChoosenDataset: to: self with: (dropdownDataset datasetIdentificationNumber)."
		"-> muss innerhalb des true-Zweiges, da sonst Fehler mit falschem Index-Zugriff, wenn das erste Dataset dataset1 ist"
	
	self datasetDropdown add: dropdownDataset. 
	"self datasetCount: self datasetCount + 1."
