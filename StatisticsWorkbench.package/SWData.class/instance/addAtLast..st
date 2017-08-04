adding/removing
addAtLast: aSWDate

	self last next: aSWDate.
	self 
		sizeIncrement;
		changed