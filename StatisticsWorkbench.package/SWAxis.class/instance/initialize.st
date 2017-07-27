initialization
initialize
	super initialize.
	self markers: OrderedCollection new;
		legend: (TextMorph new contents: '')