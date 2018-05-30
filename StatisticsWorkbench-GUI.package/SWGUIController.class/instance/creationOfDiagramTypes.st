creation
creationOfDiagramTypes

	^ {	#scatterPlot -> [(SWDiagram new visualize: self chosenDataset with: SWScatterPlot create)].
		#pieChart -> [(SWDiagram new visualize: self chosenDataset with: SWPieChart create)].
		#lineChart -> [(SWDiagram new visualize: self chosenDataset with: SWLineChart create)].
		#barGraph -> [(SWDiagram new visualize: self chosenDataset with: SWBarGraph create)].
	} as: IdentityDictionary 