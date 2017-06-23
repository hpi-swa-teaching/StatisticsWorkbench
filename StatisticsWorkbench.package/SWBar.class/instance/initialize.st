as yet unclassified
initialize
	super initialize.
	self textmorph: TextMorph new.
	self addMorph: (self textmorph).
	self openInWorld.

	