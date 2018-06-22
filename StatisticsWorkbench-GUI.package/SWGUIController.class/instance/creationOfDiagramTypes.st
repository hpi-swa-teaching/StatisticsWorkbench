creation
creationOfDiagramTypes

	^ {	#SWScatterPlot -> [(SWDiagram new visualize: self chosenDataset with: SWScatterPlot create)].
		#SWPieChart -> [(SWDiagram new visualize: self chosenDataset with: SWPieChart create)].
		#SWLineChart -> [(SWDiagram new visualize: self chosenDataset with: SWLineChart create)].
		#SWBarGraph -> [(SWDiagram new visualize: self chosenDataset with: SWBarGraph create)].
	} as: IdentityDictionary 