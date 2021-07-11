as yet unclassified
initializeSpiderNet

	| spiderNet |
	
	spiderNet := (Morph new)
		color: Color transparent;
		yourself.
	self addMorph: spiderNet;
		spiderNet: spiderNet