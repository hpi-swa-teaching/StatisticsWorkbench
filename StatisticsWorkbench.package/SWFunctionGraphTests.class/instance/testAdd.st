as yet unclassified
testAdd

	| dataset diagram |
	
	dataset := SWDataTests createSeeded.

	diagram := SWDiagram new
								visualize: dataset with: SWLineChart new;
								yourself.
	
	dataset add: (SWDate fromPoint: 0@0).
	
	self assert: [ (diagram charts at: 1) lineMorph vertices size = dataset size ]