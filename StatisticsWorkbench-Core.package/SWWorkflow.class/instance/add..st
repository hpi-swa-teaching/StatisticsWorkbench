adding/removing
add: aNode

	(aNode successors size = 0 and: aNode predecessors size = 0 and: self size > 0)
		ifTrue: [SWInvalidArgumentError signal: 'You must connect your node to at least one other node.']. 
	^ self nodes add: aNode