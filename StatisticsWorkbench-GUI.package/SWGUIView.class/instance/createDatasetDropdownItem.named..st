creation
createDatasetDropdownItem: aDatasetIdentificationNumber named: aName
	| dropdownDataset |

	dropdownDataset := PHDropdownItem label: aName.
	dropdownDataset
		when: #clicked send: #updateChosenDataset:named: to: self controller withArguments: {aDatasetIdentificationNumber. aName};
		when: #clicked send: #text: to: self datasetDropdownButton with: dropdownDataset label text.
	self datasetDropdown add: dropdownDataset. 
	self datasetDropdownButton text: aName