event-handling
onVisualizeButtonClicked 
	
	|swdata|
	self categoryColumn isNil ifFalse: [
		swdata := SWDataUnlabeled fromNamedColumns: self parsedData xAxis: self xAxis yAxis: self yAxis categorizedBy: self categoryColumn.
		self chartsToVisualize do:[:each|
			(SWDiagram new visualizeAll: swdata with: each) openInWindow.
		]. 
	]

	ifTrue: [
		swdata := SWDataUnlabeled fromNamedColumns: self parsedData xAxis: self xAxis yAxis: self yAxis.	
		self chartsToVisualize do:[:each|
			(SWDiagram new visualize: swdata with: each create) openInWindow.
		]. 
	].
