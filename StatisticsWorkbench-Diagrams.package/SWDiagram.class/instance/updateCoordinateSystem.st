updating
updateCoordinateSystem
	| maximumX maximumY chartsMaxValues |
	
	maximumX := 0.
	maximumY := 0.
	self flag: #fishy. "data should be the same in every chart"
	self charts do: [:chart | chartsMaxValues := (chart data maximum: #x) @ (chart data maximum: #y).
							(chartsMaxValues x > maximumX) 
								ifTrue: [maximumX := chartsMaxValues x].
							(chartsMaxValues y > maximumY) 
								ifTrue: [maximumY := chartsMaxValues y]].
						
	self coordinateSystem xAxis maximum: maximumX.
	self coordinateSystem yAxis maximum: maximumY.
	self coordinateSystemPadding.
	self coordinateSystem axisNames: (self charts at: 1) data dimensionNames.
	self coordinateSystem update