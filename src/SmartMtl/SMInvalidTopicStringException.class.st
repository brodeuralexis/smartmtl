"
An exception signaling an invalid topic string was provided.

This class must hold the topic string and send it as a reponse to the `topic` message.
"
Class {
	#name : #SMInvalidTopicStringException,
	#superclass : #SMException,
	#instVars : [
		'topic'
	],
	#category : #'SmartMtl-Exceptions'
}

{ #category : #'instance creation' }
SMInvalidTopicStringException class >> new: aTopic [
	"Creates a new SMInvalidTopicStringException with the given topic as invalid."
	^ self new setTopic: aTopic
]

{ #category : #'accessing - private' }
SMInvalidTopicStringException >> setTopic: aTopic [
	"Sets the topic for which the exception was signaled."
	topic := aTopic
]

{ #category : #accessing }
SMInvalidTopicStringException >> topic [
	"Returns the topic string for which this exception was triggered."
	^ topic
]
