creation
createExampleDataButtonWithArguments: anArray
	
	^ (PHButton label: 'Fill with example data') when: #clicked send: #createExampleContentFor:and:usingLabels: to: self withArguments: anArray