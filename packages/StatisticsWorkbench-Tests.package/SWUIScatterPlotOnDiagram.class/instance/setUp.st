testing
setUp 

	super setUp.

	self
		data: SWDataStub createSeeded;
		scatterPlot: SWScatterPlot new;
		diagram: (SWDiagram new visualize: self data with: self scatterPlot)