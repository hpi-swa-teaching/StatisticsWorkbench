adding/removing
addFirst: aSWDate
	
	aSWDate next: nil.
	self 
		first: aSWDate; 
		size: 1;
		changed