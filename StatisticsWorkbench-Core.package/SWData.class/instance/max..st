as yet unclassified
max: aDimension
	| current max dimensionIndex |
	
	dimensionIndex := self dimensionIndexFor: aDimension.
	max := self first.
	current := max.
	self do: [ :item | 
		(item at: dimensionIndex) > (max at: dimensionIndex)
			ifTrue: [ max := item ] ].
	^ max at: dimensionIndex