as yet unclassified
buildWith: aBuilder

	| window |
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent;
		children: (OrderedCollection new 
			add: ((self buildStatusWith: aBuilder)
				frame: self statusFrame;
				yourself);
			add: ((self buildFailureListWith: aBuilder)
				frame: self failureListFrame;
				yourself);
			add: ((self buildErrorListWith: aBuilder)
				frame: self errorListFrame;
				yourself);
			add: ((self buildButtonsWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			yourself);
		yourself.
	^ aBuilder build: window.