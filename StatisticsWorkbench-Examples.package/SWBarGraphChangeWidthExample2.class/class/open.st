as yet unclassified
open

	|data graph1 dataString window|
	
	dataString := 'x|y 1|22 2|110 3|64 4|211 5|35'.
	
	data :=  SWData fromString: dataString ofDataDimension: 2.
		
	
	
	graph1 := (SWDiagram new visualize: data with: SWBarGraph create).
	window := graph1  openInWindow.
	(graph1 charts at: 1) barWidth: 40.
	
	^window