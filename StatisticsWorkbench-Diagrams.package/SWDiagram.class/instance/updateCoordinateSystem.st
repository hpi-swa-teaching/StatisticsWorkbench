updating
updateCoordinateSystem
	| maximumX maximumY chartsMaxValues |
	
	maximumX := 0.
	maximumY := 0.
	
	self charts do: [:chart | chartsMaxValues := ((chart data maximum: #x) @ (chart data maximum: #y)).
							(chartsMaxValues x > maximumX) 
								ifTrue: [maximumX := chartsMaxValues x].
							(chartsMaxValues y > maximumY) 
								ifTrue: [maximumY := chartsMaxValues y]].
						
	self coordinateSystem xAxis maximum: maximumX.
	self coordinateSystem yAxis maximum: maximumY.
	self coordinateSystemPadding.
	self coordinateSystem axisNames: (self charts first) data dimensionNames.
	self coordinateSystem update