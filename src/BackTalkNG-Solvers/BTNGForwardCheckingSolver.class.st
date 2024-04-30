Class {
	#name : 'BTNGForwardCheckingSolver',
	#superclass : 'BTNGSolver',
	#category : 'BackTalkNG-Solvers',
	#package : 'BackTalkNG-Solvers'
}

{ #category : 'solving' }
BTNGForwardCheckingSolver >> propagateInstantiationFor: constraint [
	^ constraint enforceArcConsistency 
]
