tests
testDimension

	| d1 d2 d3 d5 |
	d1 := SWData create
					add: (SWDate fromArray: #(1));
					add: (SWDate fromArray: #(2));
					add: (SWDate fromArray: #(3));
					yourself.			
	self assert: d1 dimensions = 1.
	
	d2 := self data.
	self assert: d2 dimensions = 2.
	
	d3 := SWData create
					add: (SWDate fromArray: #(1 2 3));
					add: (SWDate fromArray: #(3 2 1));
					add: (SWDate fromArray: #(3 3 3));
					yourself.
	self assert: d3 dimensions = 3.
	
	d5 := SWData create
					add: (SWDate fromArray: #(1 2 3 4 5));
					yourself.
	self assert: d5 dimensions = 5.
	
	self should: [
			SWData create
						add: (SWDate fromArray: #(1 2));
						add: (SWDate fromArray: #(3 4));
						add: (SWDate fromArray: #(5 6 7));
						yourself
		]
		raise: SWInvalidDimensionError.
	self should: [ SWData create add: (SWDate fromArray: #()) ] raise: SWInvalidDimensionError