accessing
shortenNumbers: anObject

 | number shortNumber |
 number := anObject printString.
 shortNumber := number.
 (number size > 3)
 ifTrue: [shortNumber := ((number copyFrom: 1 to: (number size - 3)), ',', (number copyFrom: (number size - 2) to: (number  size - 2)), 'k') ].
 (number size > 6)
 ifTrue: [shortNumber := ((number copyFrom: 1 to: (number size - 6)), ',', (number copyFrom: (number size - 4) to: (number  size - 4)), 'mio') ].

 ^shortNumber asString