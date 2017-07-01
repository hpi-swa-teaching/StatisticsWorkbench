tests
testScatterPlotVisualisation
	| scatterPlot |
	
	scatterPlot := SWScatterPlot new.
	scatterPlot coordinateSystem: SWCoordinateSystemMock new.
	scatterPlot dataset: SWDiagram createTestData.
	self assert: (scatterPlot submorphs size) = (SWDiagram createTestData keys size).
	scatterPlot delete.