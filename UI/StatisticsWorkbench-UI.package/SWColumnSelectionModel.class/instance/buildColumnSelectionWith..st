building
buildColumnSelectionWith: aBuilder 
	
	^ aBuilder pluggableMultiSelectionListSpec new
			model: self;
			list: #columns;
			getSelectionList: #isSelected:;
			setSelectionList: #column:setSelected:;
			frame: (0@0 corner: 1@1);
			yourself