as yet unclassified
create: aBlockClosure with: aString

	^ SWNode new
				instruction: aBlockClosure;
				label: aString;
				yourself