updating
updateCoordinateSystem
	| maximumx maximumy chartsMaxValues |
	
	maximumx := 0.
	maximumy := 0.
	self flag: #fishy. "data should be the same in every chart"
	self charts do: [:chart | chartsMaxValues := (SWDiagram coordinateSystemPadding: (chart data max: #x)) @ (SWDiagram coordinateSystemPadding: (chart data max: #y)).
								chartsMaxValues x > maximumx ifTrue: [maximumx := chartsMaxValues x].
								chartsMaxValues y > maximumy ifTrue: [maximumy := chartsMaxValues y]].
						
	self coordinateSystem xAxis max: maximumx.
	self coordinateSystem yAxis max: maximumy.
	self coordinateSystem axisNames: (self charts at: 1) data dimensionNames.
	self coordinateSystem update.