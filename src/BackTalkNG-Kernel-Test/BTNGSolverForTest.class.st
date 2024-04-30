Class {
	#name : 'BTNGSolverForTest',
	#superclass : 'BTNGSolver',
	#category : 'BackTalkNG-Kernel-Test',
	#package : 'BackTalkNG-Kernel-Test'
}

{ #category : 'solving' }
BTNGSolverForTest >> propagateInstantiationFor: constraint [
	^ constraint enforceArcConsistency 
]
