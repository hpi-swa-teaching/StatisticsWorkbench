creation
createFunctionSelector
		self flag:#refactor. "alle Achsen und Methdoen sollen hier erreichbar sein evtl. über Dropdown"
	^ self createDefaultPage
		add: ((PHButton label: 'Calculate minimum') 
			when: #clicked send: #showInformation: to: self with: #minimum;
			align: #(fill start));
		add: ((PHButton label: 'Calculate maximum')
			when: #clicked send: #showInformation: to: self with: #maximum;
			align: #(fill start));
		add: ((PHButton label: 'Calculate median')
			when: #clicked send: #showInformation: to: self with: #median;
			align: #(fill start))