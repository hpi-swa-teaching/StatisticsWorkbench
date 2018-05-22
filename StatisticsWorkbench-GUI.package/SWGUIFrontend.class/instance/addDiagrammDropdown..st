as yet unclassified
addDiagrammDropdown: aButton
	"evtl. Symbole für Graphen klein beginnen"
	
	(PHDropdown new)
		add: ((PHDropdownItem label: 'Bar Graph') when: #clicked send: #updateChoosenDiagramType: to: self backend withArguments: #(#BarGraph));
		add: ((PHDropdownItem label: 'Line Chart') when: #clicked send: #updateChoosenDiagramType: to: self backend withArguments: #(#LineChart));
		add: ((PHDropdownItem label: 'Pie Chart') when: #clicked send: #updateChoosenDiagramType: to: self backend withArguments: #(#PieChart));
		add: ((PHDropdownItem label: 'Scatter Plot') when: #clicked send: #updateChoosenDiagramType: to: self backend withArguments: #(#ScatterPlot));
		attachTo: aButton.