as yet unclassified
drawData
	
	| vertices |

	self lineMorph ifNotNil: [self lineMorph delete].
	self lineMorph: self createLineMorph.
	vertices := OrderedCollection new.
	1 to: self dimensions do: [:i |vertices add: (SWSpiderWeb circlePositionRadius: self radius / 100 * ((self data at: i) y) atDimension: i fromDimensions: self data size) + self center].
	vertices add: (vertices at: 1).
	self lineMorph setVertices: vertices asArray.
	self addMorph: self lineMorph