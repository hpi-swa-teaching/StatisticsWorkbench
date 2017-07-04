as yet unclassified
count
	
	| counter |
	
	counter := 0.
	self do: [ :date | counter := counter + 1].
	
	^ counter 