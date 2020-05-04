testing
testShortenNumbers

 | number axis |
 
 axis := SWAxis create.
 number := (axis shortenNumbers: 1000).
 self assert: number equals: '1,0K'.

number := (axis shortenNumbers: 1230000).
 self assert: number equals: '1,2M'
