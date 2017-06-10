as yet unclassified
initialize
	super initialize.
	self bounds: ((70@170) corner: (530@630));
		position: (70@170);
		openInWorld;
		color: Color transparent.
	self diagrams: Bag new