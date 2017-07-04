as yet unclassified
remove: anArray

	| toBeDeleted |
	
	self sizeDecrement.
	
	toBeDeleted := self at: anArray.
	
	self size = 0
		ifTrue: [ ^ nil ].
	
	self flag: #fishy. "Consider using a resumable exception"
	toBeDeleted isNil
		ifTrue: [ ^ nil ].
	
	self flag: #fishy.
	self flag: #fishy. "really fishy"

	self first = self last
		ifTrue: [
			self first: nil.
			self last: nil.
			^ toBeDeleted
			].

	self first = toBeDeleted
		ifTrue: [ 
			toBeDeleted next previous: toBeDeleted previous. 
			self first: toBeDeleted next.
			^ toBeDeleted ].
	
	self last = toBeDeleted
		ifTrue: [ 
			toBeDeleted previous next: toBeDeleted next.
			self last: toBeDeleted previous.
			^ toBeDeleted ].
	
	toBeDeleted previous next: toBeDeleted next.
	toBeDeleted next previous: toBeDeleted previous..

	self changed.