testing
setUp 

	super setUp.
	self 
		data: SWDataTest createSeeded;
	     	diagramLineChart: (SWDiagram new visualize: self data with: SWLineChart create);
	 	diagramBarChart: (SWDiagram new visualize: self data with: SWBarGraph create);
		diagramEmpty: SWDiagram new;
		diagramLineScatter: (SWDiagram new visualize: self data with: SWLineChart new and: SWScatterPlot new);
		diagramPieChart: (SWDiagram new visualize: self data with: SWPieChart create);
		diagramScatterPlot: (SWDiagram new visualize: self data with: SWScatterPlot new)
