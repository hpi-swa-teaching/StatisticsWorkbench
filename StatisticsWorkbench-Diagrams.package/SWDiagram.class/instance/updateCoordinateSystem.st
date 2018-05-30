updating
updateCoordinateSystem
	| maximumX maximumY chartsMaxValues |
	
	maximumX := 0.
	maximumY := 0.
	self flag: #fishy. "data should be the same in every chart"
	self charts do: [:chart | chartsMaxValues := (chart data max: #x) @ (chart data max: #y).
								chartsMaxValues x > maximumX ifTrue: [maximumX := chartsMaxValues x].
								chartsMaxValues y > maximumY ifTrue: [maximumY := chartsMaxValues y]].
						
	self coordinateSystem xAxis max: (SWDiagram coordinateSystemPadding: maximumX).
	self coordinateSystem yAxis max: (SWDiagram coordinateSystemPadding: maximumY).
	self coordinateSystem axisNames: (self charts at: 1) data dimensionNames.
	self coordinateSystem update.