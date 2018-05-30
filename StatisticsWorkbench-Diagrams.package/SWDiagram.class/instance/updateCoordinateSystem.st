updating
updateCoordinateSystem
	| maximumx maximumy chartsMaxValues |
	
	maximumx := 0.
	maximumy := 0.
	self flag: #fishy. "data should be the same in every chart"
	self charts do: [:chart | chartsMaxValues := (chart data max: #x) @ (chart data max: #y).
								chartsMaxValues x > maximumx ifTrue: [maximumx := chartsMaxValues x].
								chartsMaxValues y > maximumy ifTrue: [maximumy := chartsMaxValues y]].
						
	self coordinateSystem xAxis max: (SWDiagram coordinateSystemPadding: maximumx).
	self coordinateSystem yAxis max: (SWDiagram coordinateSystemPadding: maximumy).
	self coordinateSystem axisNames: (self charts at: 1) data dimensionNames.
	self coordinateSystem update.