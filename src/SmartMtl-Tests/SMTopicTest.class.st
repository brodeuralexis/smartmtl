"
A SMTopicTest is a test class for testing the behavior of SMTopic
"
Class {
	#name : #SMTopicTest,
	#superclass : #TestCase,
	#instVars : [
		'topic'
	],
	#category : #'SmartMtl-Tests-Common'
}

{ #category : #running }
SMTopicTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	
	topic := SMTopic new
		theme: 'mobil';
		system: 'traf';
		subsystem: 'detector';
		category: 'det1';
		device: 'det-00970';
		node: 'zone5/class1/vehicle-speed'.
]

{ #category : #tests }
SMTopicTest >> testCategoryReturnsTheCategory [
	self assert: (topic category) equals: 'det1'.
]

{ #category : #tests }
SMTopicTest >> testCategory_ChangesTheCategory [
	topic category: 'new_category'.
	self assert: (topic category) equals: 'new_category'.
]

{ #category : #tests }
SMTopicTest >> testDeviceReturnsTheDevice [
	self assert: (topic device) equals: 'det-00970'.
]

{ #category : #tests }
SMTopicTest >> testDevice_ChangesTheDevice [
	topic device: 'det-00000'.
	self assert: (topic device) equals: 'det-00000'.
]

{ #category : #tests }
SMTopicTest >> testEqualReturnsFalseIfTheOtherObjectIsNotATopic [
	self deny: topic equals: (Object new).
	self deny: topic equals: 'mobil/traf/detector/det1/det-00970/zone5/class1/vehicle-speed'.
]

{ #category : #tests }
SMTopicTest >> testEqualReturnsTrueIf2TopicsAreTheReference [
	|other|
	other := topic.
	self assert: other identicalTo: topic.
]

{ #category : #tests }
SMTopicTest >> testEqualReturnsTrueIf2TopicsHaveTheSameValues [
	|other|
	other := SMTopic new
		theme: 'mobil';
		system: 'traf';
		subsystem: 'detector';
		category: 'det1';
		device: 'det-00970';
		node: 'zone5/class1/vehicle-speed'.
	
	self assert: other equals: topic.
]

{ #category : #tests }
SMTopicTest >> testHashDoesNotReturnsTheSameThingFor2TopicThatAreNotEqual [
	|other|
	other := topic clone system: 'infra'; yourself.
	self deny: (topic hash) equals: (other hash).
]

{ #category : #tests }
SMTopicTest >> testHashReturnsTheSameThingFor2TopicThatAreEqual [
	|other|
	other := topic clone.
	self assert: (topic hash) equals: (other hash).
]

{ #category : #tests }
SMTopicTest >> testNodeReturnsTheNode [
	self assert: (topic node) equals: 'zone5/class1/vehicle-speed'.
]

{ #category : #tests }
SMTopicTest >> testNode_ChangesTheNode [
	topic node: 'heartbeat'.
	self assert: (topic node) equals: 'heartbeat'.
]

{ #category : #tests }
SMTopicTest >> testPrintAppendsTheRightMessageToTheGivenStream [
	|stream|
	stream := String new writeStream.
	topic printOn: stream.
	self assert: (stream contents) equals: 'a SMTopic ''mobil/traf/detector/det1/det-00970/zone5/class1/vehicle-speed'''.
]

{ #category : #tests }
SMTopicTest >> testSubsystemReturnsTheSubsystem [
	self assert: (topic subsystem) equals: 'detector'.
]

{ #category : #tests }
SMTopicTest >> testSubsystem_ChangesTheSubsystem [
	topic subsystem: 'new_subsystem'.
	self assert: (topic subsystem) equals: 'new_subsystem'.
]

{ #category : #tests }
SMTopicTest >> testSystemReturnsTheSystem [
	self assert: (topic system) equals: 'traf'.
]

{ #category : #tests }
SMTopicTest >> testSystem_ChangesTheSystem [
	topic system: 'new_system'.
	self assert: (topic system) equals: 'new_system'.
]

{ #category : #tests }
SMTopicTest >> testThemeReturnsTheRightTheme [
	self assert: (topic theme) equals: 'mobil'.
]

{ #category : #tests }
SMTopicTest >> testTheme_ChangesTheTheme [
	topic theme: 'new_theme'.
	self assert: (topic theme) equals: 'new_theme'.
]
