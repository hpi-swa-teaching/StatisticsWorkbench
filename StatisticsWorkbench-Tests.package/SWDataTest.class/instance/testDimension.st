testing
testDimension
	| data1D data2D data3D data5D |
	
	data1D := SWData create
					add: #(1);
					add: #(2);
					add: #(3);
					yourself.			
	self assert: data1D dimensions = 1.
	
	data2D := self data.
	self assert: data2D dimensions = 2.
	
	data3D := SWData create
					add: #(1 2 3);
					add: #(3 2 1);
					add: #(3 3 3);
					yourself.
	self assert: data3D dimensions = 3.
	
	data5D := SWData create
					add: #(1 2 3 4 5);
					yourself.
	self assert: data5D dimensions = 5.
	
	self should: [SWData create
						add: #(1 2);
						add: #(3 4);
						add: #(5 6 7);
						yourself] raise: SWInvalidDimensionError.
		
	self should: [SWData create add: #()] raise: SWInvalidDimensionError