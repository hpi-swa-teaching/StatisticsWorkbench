creation
showNewDatasetDialog
	| newSetDialog dialogLayout valueTextArea nameTextArea labeledDataCheckbox |
	
	newSetDialog := PHDialog new title: 'Create a new dataset'.
	valueTextArea := PHTextArea placeholder: 'Dataset value'.
	nameTextArea := PHTextArea placeholder: 'Dataset name'.
	labeledDataCheckbox := PHCheckboxWithLabel label: 'use label for each datapoint'.
	
	dialogLayout := PHPage new. 
	dialogLayout
		withPadding;
		add: (PHLabel text: 'Dataset name:'); 
		add: nameTextArea; 
		add: (PHLabel text: 'Dataset value:'); 
		add: valueTextArea;
		add: labeledDataCheckbox; 
		add: ((PHButton text: 'Accept') when: #clicked send: #accept: to: newSetDialog with: nil).
		
	newSetDialog content: dialogLayout.
	
	(newSetDialog openFor: self)
		then: [self controller createDatasetFrom: valueTextArea text named: nameTextArea text usingLabels: labeledDataCheckbox checked]
		ifRejected: []