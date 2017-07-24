as yet unclassified
addAtFirst: aSWDate

	aSWDate next: self first.
	self first: aSWDate.
	self sizeIncrement.
	self changed