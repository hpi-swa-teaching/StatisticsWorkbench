testing
setUp 

	super setUp.

	self 
		data: SWDataStub createSeeded5;
		pieChart: SWPieChart create;
		diagram: (SWDiagram new visualize: self data with: self pieChart)
