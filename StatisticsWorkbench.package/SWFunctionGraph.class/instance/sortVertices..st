as yet unclassified
sortVertices: verticeSet

	^ verticeSet sorted: [ :vertice1 :vertice2 | vertice1 x <= vertice2 x]