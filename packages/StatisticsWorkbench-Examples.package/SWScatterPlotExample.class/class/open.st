instance creation
open

	^ (SWDiagram new visualize: self data with: SWScatterPlot create) openInWindow
