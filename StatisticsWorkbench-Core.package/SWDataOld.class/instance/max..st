math functions
max: aDimension

	| current max dimensionIndex |
	dimensionIndex := self validDimensionIndexFor: aDimension.
	max := self first.
	current := max.
	self do: [ :item | 
		(item key at: dimensionIndex) > (max key at: dimensionIndex)
			ifTrue: [ max := item ] ].
	^ max key at: dimensionIndex
	
		
	