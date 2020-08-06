instance creation
open

	| graph scatterPlot|
		
	graph := SWDiagram new visualize: self data with: SWScatterPlot create.
	
	scatterPlot := graph charts first.
	SWLinearRegression newFromScatterPlot: scatterPlot plotOn: graph.

	^ graph openInWindow
