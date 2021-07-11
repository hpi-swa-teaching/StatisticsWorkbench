as yet unclassified
deleteSequence
	
	self sequencePolygons do: [:each | each delete].
	self sequencePolygons removeAll