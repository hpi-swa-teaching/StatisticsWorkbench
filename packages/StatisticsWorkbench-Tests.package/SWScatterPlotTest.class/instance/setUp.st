testing
setUp

	super setUp.
	self 
		data: SWDataTest createSeeded;
		scatterPlot: SWScatterPlot new;
		diagram: (SWDiagram new visualize: self data with: self scatterPlot)
