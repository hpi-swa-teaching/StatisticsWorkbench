as yet unclassified
createWithDimensions: aNumber radius: aRadius at: aPosition

	| spiderWeb radiantsPerDimension |
	
	spiderWeb := SWSpiderWeb new.
	spiderWeb 
		extent: aRadius*2 @ (aRadius *2);
		center: aPosition.
	
	radiantsPerDimension := (360 / aNumber ) degreesToRadians.
	1 to: aNumber do:  [:i | spiderWeb addMorph: (LineMorph from: spiderWeb center to: ( SWSpiderWeb circlePositionRadius: aRadius atDimension: i fromDimensions: aNumber)+spiderWeb center color: Color black width: 2)].
	
	1 to: 5 do: [:i | |lineMorph vertices| 
					lineMorph := SWSpiderWeb createLineMorph.
					vertices:=(1 to: aNumber+1) collect: [:dim |  ( SWSpiderWeb circlePositionRadius: aRadius atDimension: dim fromDimensions: aNumber)*(i/5)+spiderWeb center ].
					lineMorph setVertices: vertices asArray.
					spiderWeb addMorph: lineMorph ].
	
	^ spiderWeb