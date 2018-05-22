as yet unclassified
showNewDatasetDialog
	| newSetDialog dialogLayout newSetTextArea | "Name überprüfen (dialogLayout evtl. schlecht) -> vllt. dialogWindow??"
	
	newSetDialog := PHDialog new.
	dialogLayout := PHPage new. 
	newSetTextArea := PHTextArea placeholder: 'Dataset'.
	dialogLayout
		withPadding;
		add: newSetTextArea;
		add: ((PHButton text: 'Accept') when: #clicked send: #accept: to: newSetDialog with: nil).
		
	newSetDialog content: dialogLayout. 
	
	(newSetDialog openFor: self)
		then: [self backend createNewDatasetFrom: newSetTextArea text];
		ifRejected: []
		
	