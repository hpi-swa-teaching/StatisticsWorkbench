testing
atEndOfLine
	^ stream atEnd 
		or:
			[ |peeked |
			peeked := stream peek.
			peeked = Character cr or: [peeked = Character lf]]