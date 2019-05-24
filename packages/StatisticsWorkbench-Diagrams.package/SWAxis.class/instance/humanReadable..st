accessing
humanReadable: anObject

	| zahl humanReadable |
	zahl := anObject printString.
	humanReadable := zahl.
	(zahl size > 3)
	ifTrue: [humanReadable := ((zahl copyFrom: 1 to: (zahl size - 3)), ',', (zahl copyFrom: (zahl size - 2) to: (zahl size - 2)), 'k') ].
	(zahl size > 6)
	ifTrue: [humanReadable := ((zahl copyFrom: 1 to: (zahl size - 6)), ',', (zahl copyFrom: (zahl size - 4) to: (zahl size - 4)), 'mio') ].

	^humanReadable