as yet unclassified
min_X
	| values |
	values := OrderedCollection new.
	self do: [:each | values add: (each x)].
	^ values min.