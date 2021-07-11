as yet unclassified
drawCircularLineForValue: aNumber

	| lineMorph vertices |
	
	lineMorph := self createLineMorph.
	vertices:=(1 to: self dimensions+1) collect: [:dim | self circlePositionAtDimension: dim forValue: aNumber].
	lineMorph setVertices: vertices asArray.
	self spiderNet addMorph: lineMorph 