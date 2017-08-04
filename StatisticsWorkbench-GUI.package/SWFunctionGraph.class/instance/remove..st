as yet unclassified
remove: aVertice
	
	self flag: #fishy. "self changed required?"
	self vertices remove: aVertice.
	self changed