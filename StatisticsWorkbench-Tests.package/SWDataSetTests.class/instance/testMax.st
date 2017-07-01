as yet unclassified
testMax
	| dataset |
	dataset := SWDataSet new data: SWDiagram createTestDataPieAndBarChart.
	
	self assert: [ (dataset max: #x) = 9 ].
	self assert: [ (dataset max: #y) = 300 ] 