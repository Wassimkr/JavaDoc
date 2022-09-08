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

{ #category : #'instance creation' }
JavaDoc >> for: aClass [

	| methodsNames methodsNamesAsString instanceVariablesNames |
	methodsNames := aClass methods collect: #selector.
	methodsNamesAsString := methodsNames fold: [ :a :b | 
	                            a , String cr , b ].
	instanceVariablesNames := aClass instVarNames fold: [ :a :b | 
 	                             a , String cr , b ].
	'Superclass:' , String cr , aClass superclass name , String cr
	, 'Instance variables names:' , String cr , instanceVariablesNames
	, String cr , 'Methods:' , String cr , methodsNamesAsString
	
]
