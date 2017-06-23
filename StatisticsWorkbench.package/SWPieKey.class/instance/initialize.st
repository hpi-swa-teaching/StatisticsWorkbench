as yet unclassified
initialize 

	super initialize.
	self pieSlices: OrderedCollection new.
	self pieKeyColors: OrderedCollection new.
	self pieKeyNames: OrderedCollection new.
	self position: 700@200.
	self extent: 200@200.
	self color: Color white.
	self openInWorld.
