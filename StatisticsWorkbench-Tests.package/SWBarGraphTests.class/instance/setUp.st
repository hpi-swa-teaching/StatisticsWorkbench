testing
setUp 

	super setUp.
	self 
		data: SWDataTests createSeeded;
		barGraph: SWBarGraph new;
		diagram: (SWDiagram new visualize: self data with: self barGraph)