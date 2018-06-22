creation
createFunctionSelector

	^ self createDefaultPage
		add: ((PHButton label: 'Calculate minimum') when: #clicked send: #showInformation: to: self with: #minimum);
		add: ((PHButton label: 'Calculate maximum') when: #clicked send: #showInformation: to: self with: #maximum);
		add: ((PHButton label: 'Calculate median') when: #clicked send: #showInformation: to: self with: #median)