testing
testStrokeMorph
	| axisLine |
	
	axisLine := SWAxisLine create.
	
	self assert: axisLine strokeMorph notNil.
	
	self assert: axisLine strokeMorph totalLength = 10.
	
	axisLine strokeColor: Color red.
	self assert: axisLine strokeMorph borderColor = Color red.
	
	axisLine strokeColor: Color blue.
	self assert: axisLine strokeMorph borderColor = Color blue.
	
	axisLine delete