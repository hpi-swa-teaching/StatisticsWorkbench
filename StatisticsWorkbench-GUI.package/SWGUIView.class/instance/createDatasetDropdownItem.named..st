creation
createDatasetDropdownItem: aDatasetIdentificationNumber named: aName
	| dropdownDataset |

	dropdownDataset := PHDropdownItem label: aName.
	dropdownDataset
		when: #clicked send: #updateChosenDataset: to: self controller with: aDatasetIdentificationNumber;
		when: #clicked send: #nameOfChosenDataset: to: self controller with: aName;
		when: #clicked send: #text: to: self datasetDropdownButton with: dropdownDataset label text.
	self datasetDropdown add: dropdownDataset. 
	self datasetDropdownButton text: aName