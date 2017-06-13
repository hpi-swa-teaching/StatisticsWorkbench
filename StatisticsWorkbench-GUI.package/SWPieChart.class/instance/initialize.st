as yet unclassified
initialize
	super initialize.
	
	self radius: 200.
	self center: (self radius @ self radius) + 100.
	self extent: (self radius @ self radius) + 100 *2.
	self color: Color transparent.
	self pieslices: OrderedCollection new.
	self openInWorld.