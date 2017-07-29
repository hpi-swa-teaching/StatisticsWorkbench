as yet unclassified
testRemove

	| funcGraph dataset diagram |
	
	dataset := SWDataTests createSeeded.
	
	diagram := SWDiagram new
								visualize: dataset with: SWLineChart new;
								yourself. 
	
	self flag: #fishy. "Make them work without coupling them to a specific dataset"
	
	funcGraph := diagram charts at: 1.
	dataset remove: #(0 1).
	
	self assert: [ funcGraph lineMorph vertices size = dataset size ]