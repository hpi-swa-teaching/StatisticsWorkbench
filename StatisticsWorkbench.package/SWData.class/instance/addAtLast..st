as yet unclassified
addAtLast: aSWDate

	self last next: aSWDate.
	self sizeIncrement.
	self changed