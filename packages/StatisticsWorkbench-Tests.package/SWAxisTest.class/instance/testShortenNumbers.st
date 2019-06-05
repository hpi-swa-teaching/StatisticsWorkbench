testing
testShortenNumbers
 | number axis |
 
 axis := SWAxis create.
 number := (axis shortenNumbers: 1000).
 self assert: number equals: '1,0k'.
