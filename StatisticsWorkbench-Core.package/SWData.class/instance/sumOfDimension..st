as yet unclassified
sumOfDimension: aDimension
	| values |
	values := OrderedCollection new.
	self do: [:each | values add: (each at: aDimension)].
	
	^ values sum.