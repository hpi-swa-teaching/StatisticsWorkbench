creation
creationOfDiagramTypes
	| dictionary |
	
	dictionary := IdentityDictionary new.
	SWChart allSubclassesDo: [:each |
			dictionary add: each name -> [(SWDiagram new visualize: self chosenDataset with: each create)]].
	
	^ dictionary