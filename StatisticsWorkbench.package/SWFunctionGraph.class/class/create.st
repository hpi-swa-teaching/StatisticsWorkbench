as yet unclassified
create
	| funcGraph |
	
	funcGraph := SWFunctionGraph new.
	funcGraph createLineMorph.
	funcGraph registerLineMorph.
	
	^ funcGraph