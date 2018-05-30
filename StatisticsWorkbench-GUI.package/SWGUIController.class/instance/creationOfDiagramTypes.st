accessing
creationOfDiagramTypes
	^ {	#scatterPlot -> [(SWDiagram new visualize: (self datasets at: self choosenDataset) with: SWScatterPlot create)].
		#pieChart -> [(SWDiagram new visualize: (self datasets at: self choosenDataset) with: SWPieChart create)].
		#lineChart -> [(SWDiagram new visualize: (self datasets at: self choosenDataset) with: SWLineChart create)].
		#barGraph -> [(SWDiagram new visualize: (self datasets at: self choosenDataset) with: SWBarGraph create)].
	} as: IdentityDictionary 