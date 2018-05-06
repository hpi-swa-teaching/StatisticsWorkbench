as yet unclassified
max_X
	| values |
	values := OrderedCollection new.
	self do: [:each | values add: (each x)].
	^ values max.