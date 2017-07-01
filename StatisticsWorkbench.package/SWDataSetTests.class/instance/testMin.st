as yet unclassified
testMin
	| dataset |
	dataset := SWDataSet new data: SWDiagram createTestDataPieAndBarChart.
	
	self assert: [ (dataset min: #x) = 1 ].
	self assert: [ (dataset min: #y) = 1 ]