as yet unclassified
testAdd

	| dataset diagram |
	
	dataset := SWDataTests createSeeded.

	diagram := SWDiagram new
								visualize: dataset with: SWFunctionGraph;
								yourself.
	
	dataset add: (SWDate fromPoint: 0@0).
	
	self assert: [ (diagram charts at: 1) vertices size = dataset size ]