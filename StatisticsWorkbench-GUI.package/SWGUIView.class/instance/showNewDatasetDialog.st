creation
showNewDatasetDialog
	| newSetDialog dialogLayout valueTextArea nameTextArea |
	
	newSetDialog := PHDialog new title: 'Create a new dataset'.
	dialogLayout := PHPage new. 
	valueTextArea := PHTextArea placeholder: 'Dataset value'.
	nameTextArea := PHTextArea placeholder: 'Dataset name'.
	dialogLayout
		withPadding;
		add: (PHLabel text: 'Dataset name:'); 
		add: nameTextArea; 
		add: (PHLabel text: 'Dataset value:'); 
		add: valueTextArea;
		add: ((PHButton text: 'Accept') when: #clicked send: #accept: to: newSetDialog with: nil).
		
	newSetDialog content: dialogLayout. 
	
	(newSetDialog openFor: self)
		then: [self controller createNewDatasetFrom: valueTextArea text named: nameTextArea text];
		ifRejected: []