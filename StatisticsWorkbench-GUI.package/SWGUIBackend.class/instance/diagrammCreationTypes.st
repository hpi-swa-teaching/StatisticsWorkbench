accessing
diagrammCreationTypes
	"Name evtl. nicht ganz passend"
	^{	#ScatterPlot -> [(SWDiagram new visualize: (self datasets at: self choosenDataset) with: SWScatterPlot create)].
		#PieChart ->  [(SWDiagram new visualize: (self datasets at: self choosenDataset) with: SWPieChart create)].
		#LineChart ->  [(SWDiagram new visualize: (self datasets at: self choosenDataset) with: SWLineChart  create)].
		#BarGraph ->  [(SWDiagram new visualize: (self datasets at: self choosenDataset) with: SWBarGraph create)].
	}as: IdentityDictionary 