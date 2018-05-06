as yet unclassified
min_Y
	| values |
	values := OrderedCollection new.
	self do: [:each | values add: (each y)].
	^ values min.