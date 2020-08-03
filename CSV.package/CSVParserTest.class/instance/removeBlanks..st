utils
removeBlanks: aString
	^ aString copyWithoutAll: String crlf, String space, String tab