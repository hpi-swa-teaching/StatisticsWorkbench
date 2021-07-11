as yet unclassified
createLabel: aString forDimension: aNumber

	| textMorph degrees |

	degrees := (self degreesFromDimension: aNumber) asInteger.
	textMorph := self createLabel: aString.
	
	self placeLabel: textMorph by: degrees on: aNumber.
	self adjust: textMorph to: self diagram.
	self placeLabel: textMorph by: degrees on: aNumber
	

	