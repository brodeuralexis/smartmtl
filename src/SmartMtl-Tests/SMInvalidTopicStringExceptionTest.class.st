"
A SMInvalidTopicStringExceptionTest is a test class for testing the behavior of SMInvalidTopicStringException
"
Class {
	#name : #SMInvalidTopicStringExceptionTest,
	#superclass : #TestCase,
	#category : #'SmartMtl-Tests-Exceptions'
}

{ #category : #tests }
SMInvalidTopicStringExceptionTest >> testTopicReturnsTheInvalidTopic [
	|ex|
	ex := SMInvalidTopicStringException new: 'invalid_topic'.
	self assert: (ex topic) equals: 'invalid_topic'.
]
