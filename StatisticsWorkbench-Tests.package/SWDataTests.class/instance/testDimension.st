as yet unclassified
testDimension

	| d1 d2 d3 d5 |
	
	d1 := SWData create
					add: (SWDate create: #(1));
					add: (SWDate create: #(2));
					add: (SWDate create: #(3));
					yourself.			
	self assert: [ d1 dimensions = 1 ].
	
	d2 := SWDataTests createSeeded.
	self assert: [ d2 dimensions = 2 ].
	
	d3 := SWData create
					add: (SWDate create: #(1 2 3));
					add: (SWDate create: #(3 2 1));
					add: (SWDate create: #(3 3 3));
					yourself.
	self assert: [ d3 dimensions = 3 ].
	
	d5 := SWData create
					add: (SWDate create: #(1 2 3 4 5));
					yourself.
	self assert: [ d5 dimensions = 5 ].
	
	self should: [
			SWData create
						add: (SWDate create: #(1 2));
						add: (SWDate create: #(3 4));
						add: (SWDate create: #(5 6 7));
						yourself
		]
		raise: SWInvalidDimensionError.
		
	self flag: #NotSure.
	self should: [ SWData create add: (SWDate create: #()) ] raise: SWInvalidDimensionError