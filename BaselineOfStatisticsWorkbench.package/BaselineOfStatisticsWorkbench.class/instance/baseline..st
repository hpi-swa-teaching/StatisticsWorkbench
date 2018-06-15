as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec baseline: 'Pheno' with: [
				spec repository: 'github://tom95/Pheno:master/src'].
			spec
				package: 'StatisticsWorkbench-Exceptions';
				package: 'StatisticsWorkbench-Core' with: [spec requires: #('StatisticsWorkbench-Exceptions')];
				package: 'StatisticsWorkbench-Diagrams' with: [spec requires: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-Exceptions')];
				package: 'StatisticsWorkbench-GUI' with: [spec requires: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-Exceptions' 'StatisticsWorkbench-Diagrams' 'Pheno')];
				package: 'StatisticsWorkbench-Tests' with: [spec requires: #('default')];
				package: 'StatisticsWorkbench-Examples' with: [spec requires: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-Exceptions' 'StatisticsWorkbench-Diagrams')];
				yourself.
			spec
				group: 'default' with: #('StatisticsWorkbench-Core' 'StatisticsWorkbench-GUI' 'StatisticsWorkbench-Exceptions');
				group: 'tests' with: #('StatisticsWorkbench-Tests')];
				yourself