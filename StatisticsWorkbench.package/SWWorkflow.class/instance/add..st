adding/removing
add: aNode

	((self checkNeighboursSizeFrom: aNode) and: self size > 0)
		ifTrue: [SWInvalidArgumentError signal: 'You must connect your node to at least one other node.']. 
	^ self nodes add: aNode