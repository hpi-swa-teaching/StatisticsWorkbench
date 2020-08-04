testing
testShortenNumbers

	| number axis |
 
 	axis := SWAxis create.
	number := (axis shortenNumbers: 1234).
	self assert: number equals: '1,2K'.

	number := (axis shortenNumbers: 1230000).
	self assert: number equals: '1,2M'.

	number := (axis shortenNumbers: 9870000000).
	self assert: number equals: '9,8B'
