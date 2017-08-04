testing
setUp 

	super setUp.
	self 
		data: SWDataTests createSeeded;
		lineChart: SWLineChart new;
		diagram: (SWDiagram new visualize: self data with: self lineChart)
	