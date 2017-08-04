tests
testRemove

	| scatterPlot dataset diagram |
	
	dataset := SWDataTests createSeeded.
	
	diagram := SWDiagram new
								visualize: dataset with: SWScatterPlot new;
								yourself. 
	
	self flag: #fishy. "Make them work without coupling them to a specific dataset"
	
	scatterPlot := diagram charts at: 1.
	dataset remove: #(1 1).
	
	self assert: [ scatterPlot dataPoints size = dataset size ]