as yet unclassified
drawSpiderNet

	1 to: self dimensions do:  [:i | self spiderNet addMorph: (LineMorph from: self center to: (self circlePositionAtDimension: i forValue: 100) color: Color black width: 2)].
	
	1 to: 5 do: [:i | |lineMorph vertices| 
					lineMorph := self createLineMorph.
					vertices:=(1 to: self dimensions+1) collect: [:dim | (self circlePositionAtDimension: dim forValue: i*20)].
					lineMorph setVertices: vertices asArray.
					self spiderNet addMorph: lineMorph ].