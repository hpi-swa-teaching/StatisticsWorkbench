as yet unclassified
initialize
	super initialize.
	self 
		show_val: true;
		textmorph: TextMorph new.
	self addMorph: (self textmorph).
	self openInWorld.

	