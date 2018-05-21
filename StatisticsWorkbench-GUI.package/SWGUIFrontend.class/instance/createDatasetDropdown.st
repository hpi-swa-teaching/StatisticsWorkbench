as yet unclassified
createDatasetDropdown
	| dropdownButton dropdown |
	
	dropdownButton := PHButton label: 'dataset' iconSuffix: #iconCaret_down.
	dropdown := PHDropdown new.
	self backend datasetDropdown: dropdown. 
	dropdown attachTo: dropdownButton.
			
	^dropdownButton