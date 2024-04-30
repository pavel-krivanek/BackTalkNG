Class {
	#name : 'BaselineOfBackTalkNG',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfBackTalkNG',
	#package : 'BaselineOfBackTalkNG'
}

{ #category : 'baselines' }
BaselineOfBackTalkNG >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec
		package: 'BackTalkNG-Kernel';
		package: 'BackTalkNG-Constraints';
		package: 'BackTalkNG-Solvers';
		package: 'BackTalkNG-Kernel-Test';
		package: 'BackTalkNG-Constraints-Test'
	 ]
]
