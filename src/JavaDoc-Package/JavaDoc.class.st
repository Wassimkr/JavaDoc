"
Cette classe doit retenir une description pour n'importe quelle classe.
La description d'une classe contient :
	- Le nom de la classe.
	- La classe super.
	- Leurs variables d'instances.
	- Les methods de la clasee .
"
Class {
	#name : #JavaDoc,
	#superclass : #Object,
	#category : #'JavaDoc-Package'
}

{ #category : #printing }
JavaDoc class >> for: aClass [
	
	| strm |
	 
	strm := String streamContents: [ :stream |
		stream 
			nextPutAll: 'Classe : ';
			nextPutAll: aClass printString;
			nextPutAll: '.';
			nextPut: Character cr;
			nextPut: Character cr;
			nextPutAll: 'Super classe : ';
			nextPutAll: aClass superclass printString;
			nextPutAll: '.';
			nextPut: Character cr;
			nextPut: Character cr;
			nextPutAll: 'Sub-classes : ';
			nextPutAll: aClass subclasses printString;
			nextPutAll: '.';
			nextPut: Character cr;
			nextPut: Character cr;
			nextPutAll: 'Variables d`instances : ';
			nextPutAll: aClass instVarNames printString;
			nextPutAll: '.';
			nextPut: Character cr;
			nextPut: Character cr;
			nextPutAll: 'Methods Name : ';
			nextPutAll: aClass methodDict printString;
			nextPutAll: '.';
			nextPut: Character cr
	].
	^ strm.
]
