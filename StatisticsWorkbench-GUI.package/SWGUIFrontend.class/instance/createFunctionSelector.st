as yet unclassified
createFunctionSelector

	^ PHPage new
		add: ((PHButton label: 'Calculate minimum') when: #clicked send: #showInformation: to: self withArguments: {#minimum});
		add: ((PHButton label: 'Calculate maximum') when: #clicked send: #showInformation: to: self withArguments: {#maximum});
		add: ((PHButton label: 'Calculate median') when: #clicked send: #showInformation: to: self withArguments: {#median}).