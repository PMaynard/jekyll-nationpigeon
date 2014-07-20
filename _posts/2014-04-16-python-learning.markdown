---
date: 2014-04-16 18:00:11
published: true
layout: post
slug: python-learning
title: Python Learning
categories:
- Programming
tags:
- python
---

# Random Talk
- Meta Programming Ruby - Book
- Netflix - Chaos monkey/gortilla/kong
	- Testing thing which randomly shuts down servers, racks and data centers.
- Jython - Python+Java Mainly used in admin and QA
- ```"""``` HereDoc - Here be documentation (note it's three double quotes)
- [Execution in the kingdom of nouns](http://steve-yegge.blogspot.co.uk/2006/03/execution-in-kingdom-of-nouns.html)
- youtube.com/user/reactconf
- http://lambda-the-ultimate.org/
- Eric Evans, Domain Driven Design. Build an unambiguous language
- __lambda calculus__. What would happen if a formula was an input to a formula.
- Underscore.js - Full functional JS toolkit.
- COD IBm 70s, inveted Relasional DB, based on SQL.
- OO done well when you can use it without knowing the internal works.
- Liz coff | Zen Shaw | Alen Holomb - Compleelty encapsulated OO Godfarther
- AOP framework.

- Look up - Average use sum or reduce

Python3

# Data Structures

Data types which return __False__, anything which is not in this list will return ture. So for example __-1__ will return __True__.

		''
		None
		[]
		()
		0
		False

To specify an empty body use __pass__

		if a<b: 
			pass
		else: 
			print('beep')

Python is strong, dynamically typed. Meaning that a variable will not change it's type without explicitly being stated. That being said the following is perfectly valid.

		a_variable = 1
		a_variable = "I am a string"

Because the variable does not have a type.

Pythons operators will only accept compatible types. Otherwise it will raise a type error.

		no1 = 1
		no1 + 1234
		try:
		    print(no1 + "abc")
		except TypeError as e:
		    print("Dynamic typing means '+' wont work with mismatched types")

Python everything is an __Object__. Nothing is a value type, only reference type.

		ref = print 
		print(ref)
		<built-in function print>
		

__Duck typing__ Python accepts any object as a function argument. If it walks and talks like a Duck, it's a Duck.

		class MyFoo():
			def foo(self):
				print('Bar')

		class MyBar():
			def bar(self):
				print("Foo")

		def callFoo(func):
			func.foo()

		try:
			mf = MyFoo()
			mb = MyBar()
			callFoo(mf)
			callFoo(mb)
		except AttributeError as e:
			print("Missing Attribute/Method.")

# Loops

__enumerate__(_iterable, start=0_)

Takes a compatible type, sequence, and returns an iterator (ID:Value). Also see [Iterator](#iterator)

		for pair in enumerate([10,20,50,80,40,100]]):
		    print('Value at index %d is %s' % (pair[0], pair[1]))

__while__ supports the else clause. It will only be called when 'break' is not used.

# Sequences
List (mutable), Tuple (immutable), strings and maps

		tuple = (a,b,c)

Tuple is an immutable list. [See List comprehension]()

# Functions

Functions with many arguments, you can use 	```def manyArguments(name, *args):```
Put all remaining parameter in a tuple sequence.

		def manyArguments(name, *args):
			print("Hey %s\nOther arguments:" % name)
			for arg in args:
				print("\t%s" % arg)

		manyArguments("pigeon", 1, 5, 5.0)

Functions can be given in any order if specified as ```func(b=12, a='ab', x=99, y='zz')```

# Regex

- __PRE__ Perl Regular Expression - Normal expected standard use.
- __ERE__ Extended Regular Expression - Newer (epgre | grep -e | sed -E)
- __BRE__ Basic Regular Expression - Older (grep | sed)

Don't use [re.match](https://docs.python.org/3/library/re.html#re.match) unless you want to match strings only at the beginning.

A [match object](https://docs.python.org/3/library/re.html#match-objects) is returned on success, otherwise None, it's boolean True. It is better to use a match object where you can.

		iterator = re.finditer('(pig)([a-z]{3})', "beep pigeon troll")
		for match in iterator:
		    print("Full match (%s) \nGroup 1 (%s) \nGroup 2 (%s)" \
		          % (match.group(0), match.group(1), match.group(2)))

re.sub can take a function as replacement value.

		def myFunc(match):
			return match.group(0).lower()

		subResult = re.sub('PIGEON', myFunc, "BEEP PIGEON TRoLL")
		print(subResult)


# lambda
Unnamed function, a function which is a self contained block of code which can be used as a parameter. Restricted to just one line.

		lambda a,b: a + b

Example as above:

		subResult = re.sub('PIGEON', lambda m: m.group(0).lower(), "BEEP PIGEON TRoLL")
		print(subResult)

# Functional Programming

Built-in Python.
- Filter
	- items < value
- Map (Transform)
	- vale converted to string
- Reduce (need to import functools)

# Reverse 
Quick python hack to reverse words. Start at the default 0, end at the default len(str), set the stepping point to -1.

\[start : ending : stepping char\]
		
		print("forwards"[::-1])


# List comprehension
Some examples, reduce the amount of loops a clearer simpler syntax. Do it imminently.

# Object Oriented Programming

Important to note that the number of fields a class can have may not be constant. When writing a class it's a good idea to override __\__str____ and __\__repr____ methods. Repr is used to return a formal machine readable version of the class used for serialization. It's not possible to have private fields, it's a scripting language, it's not designed for big projects. (See Larry Wall on privacy- shotgun). Although you can add ``__`` (underscore, underscore) to a field name, which will mangle it. This can help prevent potential shadowing and accidental use. Though it won't stop bad people from doing bad things.

# With

If a class uses __\__enter____ and __\__exit____ you can use __with__. This is used for IO and network to close and open file descriptors.

		class Pigeon: 
			def __enter__(self):
				print("Starting the pigeon drive... ", end='')

			def activate(self):
				print("Activated. ", end='')

			def __exit__(self, xc_type, exc_val, exc_tb):
				print("Power down complete!")
					
		pig = Pigeon()
		with pig:
			pig.activate()
# Decorators
'@' are used as a decorator. It is attached to a class or method. It can declare properties and static methods.

# Static Fields
Good for database connections. Accessed via every instance of class.

		class Pigeon:
		    numPigeons = 0
		    def __init__(self):
		    	Pigeon.numPigeons += 1 

Static method. Declared in the class but does not become part of the new instance. Static methods live at the level of the class. Note that there is no 'self', so no current object/instance.

		class Pigeon:
			numPigeons = 0
			def __init__(self):
				Pigeon.numPigeons += 1 

			@staticmethod
			def print_pigeons():
				print(Pigeon.numPigeons)

		p1 = Pigeon()
		p2 = Pigeon()

		Pigeon.print_pigeons()


# Custom Decorator
		def my_decorator(func):
			def my_wrapper(*args):
				print("Replacing '%s' with 'Pigeon'" % args[0])
				func('Pigeon', args[1])
			return my_wrapper

		@my_decorator
		def foo(a, b):
			print('Foo called with %s and %s' % (a, b))

		foo('Cat', 'Dog')


my_decorator must accept return a function. This function (my_wrapper) will now be invoked instead of Foo.

This allows arbitrary functions to be called as a wrapper for functions. For example you can add _@log_, which could log when and what arguments the function was called with. This is called [Aspect Oriented Programming](https://en.wikipedia.org/wiki/Aspect-oriented_programming) (AOP), aspects change over time. More examples of decorators are Thread safety, auditing and security i.e user permissions. 

# Properties
Decorators are used to specify properties. Properties look like a field but acts like a method.

		class Pigeon:
			def __init__(self, numb):
				self.numbPigeons = numb
			def __str__(self):
				return str(self.numbPigeons)

			@property
			def count(self):
			    return self.numbPigeons

			@count.setter
			def count(self, value):
			    self.numbPigeons = value

			@count.deleter
			def count(self):
				self.numbPigeons = -1
				# raise TypeError("Pigeons do not talk")

		p = Pigeon(1)
		print(p)
		p.count = 10
		print(p)
		del p.count
		print(p)

# Iterator 

To create your own iterator object you need to have the **\__iter__** and **\__next__** method. At the end simply raise ```StopIteration``` See [docs](https://docs.python.org/3/glossary.html#term-iterator)

		class PigeonIterator:
		    def __init__(self, input):
		        self.data = input
		        self.index = 0

		    def __iter__(self):
		        return self

		    def __next__(self):
		        if self.index == len(self.data):
		            raise StopIteration
		        else:
		            retn = self.data[self.index]
		            self.index += 1
		            return retn

		for pigeon in PigeonIterator(("Aachen Cropper", "Baja Tumbler", "Beak-Crested Jacobin")):
		    print(pigeon)

# Reflection/Introspection

__Meta classes__, a class which holds the details of another class. 


		klass = theObject.__class__
		for name in klass.__dict__:
			print('\t\t%s' % name)

# Testing 

Any class inherited from unittest and a method which starts with _test_.

		import unittest

		class PigeonTest(unittest.TestCase):
		    def setUp(self):
		        self.pigeonObj = Pigeon(12)
		    
		    def tearDown(self):
		        pass
		        
		    def test_count(self):
		        self.assertEqual(12,self.pigeonObj.count)

		    def test_set(self):
		    	self.pigeonObj.count = 9999999999999
		    	self.assertEqual(9999999999999,self.pigeonObj.count)

		    def test_del(self):
		    	del self.pigeonObj.count
		    	self.assertEqual(-1,self.pigeonObj.count)

		if __name__ == '__main__':
		    unittest.main()

# Generator

Unlike list comprehension, generators only generates a value wen you say next they are lazy.

```g = generator()``` Is a link to live function, it will not return anything until next is called on it. Usefull for making queries to a database to prevent 100 calls as soon as the script is loaded. 

It returns a ```StopIteration``` when it is finished.


		def generate(number, power):
		    print('Raising %d to the power of %d' %(number, power))
		    retval = 1
		    for x in range(power):
		        retval *= number
		        yield retval
		    return
		        
		g = generate(4, 5)
		print('%5d' % next(g))
		print('%5d' % next(g))
		print('%5d' % next(g))
		print('%5d' % next(g))
		print('%5d' % next(g))

		try:
		   next(g)
		except StopIteration as ex:
		    print('Whoops - generator has completed!')
		    
		myList = list(generate(5, 4))
		for item in myList:
		    print('%5d' % item)

Inside generator we yield and return a value.

Shorthand/simpler - Generator expression 

		g = (c * 2 for c in 'python')
