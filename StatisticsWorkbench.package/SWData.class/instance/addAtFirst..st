adding/removing
addAtFirst: aSWDate

	aSWDate next: self first.
	self 
		first: aSWDate;
		sizeIncrement;
		changed