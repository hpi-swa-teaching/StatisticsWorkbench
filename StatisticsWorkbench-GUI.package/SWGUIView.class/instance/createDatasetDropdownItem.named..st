as yet unclassified
createDatasetDropdownItem: aDatasetIdentificationNumber named: aName
	| dropdownDataset |

	aName = ''
		ifTrue: [dropdownDataset := (PHDropdownItem label: 'dataset', aDatasetIdentificationNumber)]
		ifFalse: [dropdownDataset := (PHDropdownItem label: aName)].
		
	dropdownDataset
		when: #clicked send: #updateChoosenDataset: to: self controller with: aDatasetIdentificationNumber;
		when: #clicked send: #text: to: self datasetDropdownButton with: dropdownDataset label text.
	self datasetDropdown add: dropdownDataset. 