as yet unclassified
createWith: aBlockClosure labelled: aString

	^ SWNode new
				instruction: aBlockClosure;
				label: aString;
				yourself