as yet unclassified
createBarsFrom: aSWData
	| xOfBar height index |
	
	self flag: #fishy.
	index := 1.
	aSWData do: [:vector |
		xOfBar := self barPositionFor: index * (self barWidth/2.5). 
		index := index + 1.
		height := self barBottom - (self coordinateSystem positionFor: 0 @ vector y) y.
		self add:
			(SWBar new
						width: self barWidth;
						position: (xOfBar - (self barWidth)) @ ("self coordinateSystem xAxis y + self coordinateSystem yAxis length"self barBottom - height);
						caption: vector x asString;
						height: height";"
						"value: vector y;"
						"date: vector;"			"-> Sind die 3 wichtig? Auf das Diagramm haben sie eigentlich keinen Einfluss..."
						"bottom: self barBottom")
		]