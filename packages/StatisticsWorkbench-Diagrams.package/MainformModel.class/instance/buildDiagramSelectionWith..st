as yet unclassified
buildDiagramSelectionWith: aBuilder

	^ aBuilder pluggableListSpec new
			model: self;
			listSelector: nil;
			
			frame: (LayoutFrame new 
				topFraction: 0.2;
				bottomFraction: 0.4;
				leftFraction: 0;
				rightFraction: 1
				yourself);
			yourself