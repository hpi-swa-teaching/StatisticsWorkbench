initialization
initialize 
	|dictionary|

	super initialize. 
	self datasets: OrderedCollection new. 
	dictionary := IdentityDictionary new.
	SWChart allSubclassesDo: [:each |
			dictionary add: each name -> [(SWDiagram new visualize: self chosenDataset with: each create)]].
	