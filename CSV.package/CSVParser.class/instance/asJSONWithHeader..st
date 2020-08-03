converting
asJSONWithHeader: aCollectionOfString

	^ String streamContents: [:aStream |
		aStream nextPutAll: '['; cr.
		self rows allButFirst
			do: [:row |
				aStream space; nextPut: ${.
				aCollectionOfString
					do: [:property |
						aStream
							tab; nextPutAll: property asString;
							nextPutAll: ': "';
							nextPutAll: row removeFirst;
							nextPut: $"]
					separatedBy: [aStream nextPut: $,; cr].
				aStream space; nextPut: $}]
			separatedBy: [aStream nextPut: $,; cr].
		aStream nextPut: $] ].  