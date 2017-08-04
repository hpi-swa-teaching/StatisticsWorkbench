tests
testAdd

	| dataset diagram |
	
	dataset := SWDataTests createSeeded.

	diagram := SWDiagram new
								visualize: dataset with: SWScatterPlot;
								yourself.
	
	dataset add: (SWDate fromPoint: 0@0).
	
	self assert: [ (diagram charts at: 1) dataPoints size = dataset count ]