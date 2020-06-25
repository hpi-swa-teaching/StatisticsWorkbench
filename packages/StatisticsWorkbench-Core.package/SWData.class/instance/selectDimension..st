accessing
selectDimension: aDimension

	| values |

	values := OrderedCollection new.
	self do: [:each | values add: (each at: (self dimensionIndex: aDimension))].

	^ values
