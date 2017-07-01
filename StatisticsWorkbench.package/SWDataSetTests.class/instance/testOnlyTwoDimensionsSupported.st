as yet unclassified
testOnlyTwoDimensionsSupported
	| dataset |
	dataset := SWDataSet new data: SWDiagram createTestDataPieAndBarChart.
	
	self should: [ dataset max: #z ] raise: SWInvalidArgumentError.
	self should: [ dataset min: #z ] raise: SWInvalidArgumentError