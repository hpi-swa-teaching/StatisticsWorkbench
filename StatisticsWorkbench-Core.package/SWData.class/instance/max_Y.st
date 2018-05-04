as yet unclassified
max_Y
	| values |
	values := OrderedCollection new.
	self do: [:each | values add: (each y)].
	^ values max.