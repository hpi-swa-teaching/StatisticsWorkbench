as yet unclassified
addDiagrammDropdown: aButton
	"evtl. Symbole für Graphen klein beginnen"
	
	(PHDropdown new)
		add: ((PHDropdownItem label: 'bar graph') when: #clicked send: #updateChoosenDiagramType: to: self controller with: #barGraph; when: #clicked send: #text: to: aButton with: 'bar graph'); 
		add: ((PHDropdownItem label: 'line chart') when: #clicked send: #updateChoosenDiagramType: to: self controller with: #lineChart; when: #clicked send: #text: to: aButton with: 'line chart');
		add: ((PHDropdownItem label: 'pie chart') when: #clicked send: #updateChoosenDiagramType: to: self controller with: #pieChart; when: #clicked send: #text: to: aButton with: 'pie chart');
		add: ((PHDropdownItem label: 'scatter plot') when: #clicked send: #updateChoosenDiagramType: to: self controller with: #scatterPlot; when: #clicked send: #text: to: aButton with: 'scatter plot');
		attachTo: aButton.