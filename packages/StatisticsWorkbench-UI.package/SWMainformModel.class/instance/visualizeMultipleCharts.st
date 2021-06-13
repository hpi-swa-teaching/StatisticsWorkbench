event-handling
visualizeMultipleCharts

	| swdataCollection |

	swdataCollection := SWDataUnlabeled
				fromNamedColumns: self namedColumns
				xAxis: self xAxis
				yAxis: self yAxis
				categorizedBy: self categoryColumn.
	
	self chartsToVisualize
		do: [:each | (SWDiagram new visualizeAll: swdataCollection with: each) openInWindow]