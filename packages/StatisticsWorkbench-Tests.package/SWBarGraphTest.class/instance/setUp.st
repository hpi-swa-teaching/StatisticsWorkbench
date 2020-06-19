testing
setUp 

	super setUp.
	self 
		data: SWDataTest createSeeded;
		barGraph: SWBarGraph new;
		diagram: (SWDiagram new visualize: self data with: self barGraph)
