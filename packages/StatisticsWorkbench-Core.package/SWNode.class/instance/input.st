accessing
input

	^ (self predecessors collect: [:predecessor | predecessor output]) asArray
