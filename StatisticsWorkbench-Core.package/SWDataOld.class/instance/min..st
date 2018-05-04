math functions
min: aDimension

	| current min dimensionIndex |
	dimensionIndex := self validDimensionIndexFor: aDimension.
	min := self first.
	current := min.
	self do: [:item | 
		(item key at: dimensionIndex) < (min key at: dimensionIndex)
			ifTrue: [ min := item ] ].
	^ min key at: dimensionIndex
	
		
	