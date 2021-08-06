testing
setUp 

	super setUp.

	self	data: SWDataStub createSeededMultiDimensional;
		spiderChart: SWSpiderChart new;
		diagram: (SWDiagram new visualize: self data with: self spiderChart)