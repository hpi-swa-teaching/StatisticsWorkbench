creation
createDiagramCreationButton
	
	^ (PHButton label: 'Create')
		when: #clicked send: #createDiagram to: self controller;
		yourself