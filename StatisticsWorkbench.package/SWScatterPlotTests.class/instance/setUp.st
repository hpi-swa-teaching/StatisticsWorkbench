tests
setUp

	super setUp.
	self 
		data: SWDataTests createSeeded;
		scatterPlot: SWScatterPlot new;
		diagram: (SWDiagram new visualize: self data with: self scatterPlot)