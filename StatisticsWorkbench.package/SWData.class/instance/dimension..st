as yet unclassified
dimension: aDimension
	
	| dimensionCollection|
	
	self errorIfDimensionIsOutOfBounds: aDimension.
	
	dimensionCollection := OrderedCollection new.
	
	self do:[ :date | dimensionCollection add: (date key at: aDimension) ].
	
	^ dimensionCollection 