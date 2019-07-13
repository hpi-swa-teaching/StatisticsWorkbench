accessing
shortenNumbers: anObject

 | number shortNumber |

number := anObject printString.
shortNumber := number.
(number size > 3) ifTrue: [
	shortNumber := self createShortNumber: number powerOfTen: 3 abbreviation: 'K'].
(number size > 6) ifTrue: [
	shortNumber := self createShortNumber: number powerOfTen: 6 abbreviation: 'M'].
(number size > 9) ifTrue: [
	shortNumber := self createShortNumber: number powerOfTen: 9 abbreviation: 'B'].
(number size > 12) ifTrue: [
	shortNumber := self createShortNumber: number powerOfTen: 12 abbreviation: 'T'].
(number size > 15) ifTrue: [
	shortNumber := self createShortNumber: number powerOfTen: 15 abbreviation: 'Qa'].
(number size > 18) ifTrue: [
	shortNumber := self createShortNumber: number powerOfTen: 18 abbreviation: 'Qi'].
(number size > 21) ifTrue: [
	shortNumber := self createShortNumber: number powerOfTen: 21 abbreviation: 'Sx'].

 ^ shortNumber asString
