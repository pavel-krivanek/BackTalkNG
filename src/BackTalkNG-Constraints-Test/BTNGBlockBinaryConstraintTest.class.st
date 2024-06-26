Class {
	#name : 'BTNGBlockBinaryConstraintTest',
	#superclass : 'BTNGAbstractBinaryConstraintTest',
	#category : 'BackTalkNG-Constraints-Test',
	#package : 'BackTalkNG-Constraints-Test'
}

{ #category : 'setUp-tearDown' }
BTNGBlockBinaryConstraintTest >> constraintClass [
	^BTNGBlockBinaryConstraint 
]

{ #category : 'setUp-tearDown' }
BTNGBlockBinaryConstraintTest >> createConstraint [
	^self constraintClass
		on: variable1 and: variable2 block: [:a :b | a + b = 4]
]

{ #category : 'running' }
BTNGBlockBinaryConstraintTest >> testArcConsistency [
	| expectedReducedDomain |
	constraint enforceArcConsistency.
	expectedReducedDomain := (0 to: 4) asSet.
	self assert: variable1 valuesToExplore asSet = expectedReducedDomain.
	self assert: variable2 valuesToExplore asSet = expectedReducedDomain.
	self assert: constraint isConsistent
]
