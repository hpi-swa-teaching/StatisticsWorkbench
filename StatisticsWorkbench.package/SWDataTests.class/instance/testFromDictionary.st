as yet unclassified
testFromDictionary

	| dict data |
	dict := Dictionary new.
	
	dict add: 0->1; add: 1->1; add: 1->3; add: 3->0.
	
	data := SWData fromDictionary: dict.
	
	self assert: [ data = SWData createSeeded ]