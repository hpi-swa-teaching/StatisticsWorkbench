instance creation
open

	| graph scatterPlot|
		
	graph := (SWDiagram new visualize: self data with: SWScatterPlot create).
	
	scatterPlot := graph submorphs at: 1.
	SWLinearRegression newFromScatterPlot: scatterPlot plotOn: graph.

	^ graph openInWindow
