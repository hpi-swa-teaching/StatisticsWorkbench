tests
testEqual

	| data1 data2 data3 |
	data1 := self data.
	data2 := self data copy
						add: #(5 5);
						yourself.
	data3 := self data copy.
	
	self assert: data1 = data1.
	self assert: data2 = data2.
	self assert: data3 = data3.
	
	self deny: data1 = data2.
	self assert: data1 = data3