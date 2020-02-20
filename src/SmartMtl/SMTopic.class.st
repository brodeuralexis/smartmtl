"
A topic is a unique identifier to values produced by sensors by the city of Montreal.

This class is responsible for storing the information associated with a topic in a computer friendly format.  Since this class is to be used by lots of other classes, it should not depend on anything else in the `SmartMtl` group of modules.
"
Class {
	#name : #SMTopic,
	#superclass : #Object,
	#instVars : [
		'theme',
		'system',
		'subsystem',
		'category',
		'device',
		'node'
	],
	#category : #'SmartMtl-Common'
}

{ #category : #comparing }
SMTopic >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ theme = anObject theme
		and: [ category = anObject category
				and: [ device = anObject device
						and: [ node = anObject node
								and: [ subsystem = anObject subsystem and: [ system = anObject system ] ] ] ] ]
]

{ #category : #accessing }
SMTopic >> category [
	"Returns the category associated with this topic."
	^ category
]

{ #category : #accessing }
SMTopic >> category: aCategory [
	"Changes the category associated with this topic."
	category := aCategory.
]

{ #category : #accessing }
SMTopic >> device [
	"Returns the device associated with this topic."
	^ device
]

{ #category : #accessing }
SMTopic >> device: aDevice [
	"Changes the device associated with this topic."
	device := aDevice.
]

{ #category : #comparing }
SMTopic >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ theme hash
		bitXor:
			(category hash
				bitXor:
					(device hash
						bitXor: (node hash bitXor: (subsystem hash bitXor: system hash))))
]

{ #category : #accessing }
SMTopic >> node [
	"Returns the node associated with this topic."
	^ node
]

{ #category : #accessing }
SMTopic >> node: aNode [
	"Changes the node associated with this topic."
	node := aNode.
]

{ #category : #printing }
SMTopic >> printOn: aStream [
	"Append a sequence of characters to aStream that identify the receiver."

	super printOn: aStream.
	
	aStream nextPutAll: ' ''';
		nextPutAll: theme;
		nextPutAll: '/';
		nextPutAll: system;
		nextPutAll: '/';
		nextPutAll: subsystem;
		nextPutAll: '/';
		nextPutAll: category;
		nextPutAll: '/';
		nextPutAll: device;
		nextPutAll: '/';
		nextPutAll: node;
		nextPutAll: ''''.
]

{ #category : #accessing }
SMTopic >> subsystem [
	"Returns the subsystem associated with this topic."
	^ subsystem
]

{ #category : #accessing }
SMTopic >> subsystem: aSubsystem [
	"Changes the subsystem associated with this topic."
	subsystem := aSubsystem.
]

{ #category : #accessing }
SMTopic >> system [
	"Returns the system associated with this topic."
	^ system
]

{ #category : #accessing }
SMTopic >> system: aSystem [
	"Changes the system associated with this topic."
	system := aSystem.
]

{ #category : #accessing }
SMTopic >> theme [
	"Returns the theme associated with this topic."
	^ theme
]

{ #category : #accessing }
SMTopic >> theme: aTheme [
	"Changes the theme associated with this topic."
	theme := aTheme.
]
