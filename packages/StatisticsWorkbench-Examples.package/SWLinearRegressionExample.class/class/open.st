as yet unclassified
open

	| data graph linearRegression scatterPlot|
	
	data := SWDataUnlabeled create     
		add: #(1 22);
		add: #(2 110);
		add: #(3 64); 
		add: #(4 211);
		add: #(5 35);
		yourself.
		
	graph := (SWDiagram new visualize: data with: SWScatterPlot create)
		openInWindow;
		yourself.
	
	scatterPlot :=  graph submorphs at: 1.
	linearRegression := SWLinearRegression newFromScatterPlot: scatterPlot plotOn: graph.
