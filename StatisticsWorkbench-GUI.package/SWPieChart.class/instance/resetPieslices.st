as yet unclassified
resetPieslices

	self pieslices do: [:slice | slice delete].
	self pieslices: OrderedCollection new