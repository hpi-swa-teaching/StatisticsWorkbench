helper
createDiagramWith: aChart

	^ SWDiagram new visualize: (SWDataSet new data: SWDiagram createTestDataPieAndBarChart) with: aChart 