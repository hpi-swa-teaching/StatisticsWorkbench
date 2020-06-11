instance creation
fromYValues: yValues

	| xValues |

	xValues := OrderedCollection new.
	(1 to: yValues size) do: [:i | xValues add: i]. 

	^ self fromXValues: xValues versusYValues: yValues
