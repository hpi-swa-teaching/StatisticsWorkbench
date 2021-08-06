testing
setUp 

	super setUp.
	self data: SWDataStub createSeeded;
	     	diagramLineChart: (SWDiagram new visualize: self data with: SWLineChart create);
	 	diagramBarChart: (SWDiagram new visualize: self data with: SWBarChart create);
		diagramEmpty: SWDiagram new;
		diagramLineScatter: (SWDiagram new visualize: self data with: SWLineChart new and: SWScatterPlot new);
		diagramPieChart: (SWDiagram new visualize: self data with: SWPieChart create);
		diagramScatterPlot: (SWDiagram new visualize: self data with: SWScatterPlot new)
