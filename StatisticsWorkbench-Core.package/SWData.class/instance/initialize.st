initialization
initialize 

	super initialize.
	dimensionIndices := Dictionary new 
														add: #x ->1; 
														add: #y->2;
														yourself.
	self 
		size: 0;
		first: nil