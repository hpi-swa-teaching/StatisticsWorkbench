event-handling
visualizeSingleChart 

	| swdata |
	
	swdata := SWDataUnlabeled fromNamedColumns: self namedColumns xValues: self xAxis yValues: self yAxis.	
	self chartsToVisualize do:[:each|
		(SWDiagram new visualize: swdata with: each create) openInWindow.
	]. 