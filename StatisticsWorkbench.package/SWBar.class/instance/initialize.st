as yet unclassified
initialize
	super initialize.
	self openInWorld;
		show_val: true;
		textmorph: TextMorph new.
	self addMorph: (self textmorph).
	self textmorph openInWorld.

	