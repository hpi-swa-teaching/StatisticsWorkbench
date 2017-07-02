as yet unclassified
testDimension

	| d1 d2 d3 d5 |
	
	d1 := SWData create
					add: #(1);
					add: #(2);
					add: #(3);
					yourself.			
	self assert: [ d1 dimension = 1 ].
	
	d2 := SWData class createSeeded.
	self assert: [ d2 dimension = 2 ].
	
	d3 := SWData create
					add: #(1 2 3);
					add: #(3 2 1);
					add: #(3 3 3);
					yourself.
	self assert: [ d3 dimension = 3 ].
	
	d5 := SWData create
					add: #(1 2 3 4 5);
					yourself.
	self assert: [ d5 dimension = 5 ].
	
	self should: [
			SWData create
						add: #(1 2);
						add: #(3 4);
						add: #(5 6 7);
						yourself
		]
		raise: SWInvalidDimensionError.
		
	self flag: #NotSure.
	self should: [ SWData create add: #() ] raise: SWInvalidDimensionError