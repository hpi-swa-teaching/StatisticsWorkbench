event-handling
visualizeSingleChart 

	| swdata |
	
	swdata := SWDataUnlabeled fromNamedColumns: self namedColumns xAxis: self xAxis yAxis: self yAxis.	
	self chartsToVisualize do:[:each|
		(SWDiagram new visualize: swdata with: each create) openInWindow.
	]. 