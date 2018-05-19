as yet unclassified
addDatasetDropdown: aButton

	| dropdown |
	
	dropdown := PHDropdown new.
	dropdown
	add: (PHDropdownItem label: 'dataset1');
	attachTo: aButton.