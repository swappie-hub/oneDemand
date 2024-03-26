## **IMPLEMENts** 

We must override every method declared in the superclass. 

* Interfaces are useful when you don’t want to provide an implementation of methods but just their API. It’s like if the interface was a wall socket and the class was the plug to insert.
* When you use class B implements A {} you must override every method of class A. Inheritance does NOT take place because methods just provide an API and not a concrete implementation.
* You can use implements with one or more classes.

```dart
class Example {
  void method() => print('Hi');
}

class AnotherExample implements Example {
  @override
  void method() => print('Hello');
}
```



## **EXTENDS** 

With extends we could instead override zero or more methods (so you’re not forced to redefine them all)

* This is the typical OOP inheritance that can be used when you want to add new features in a subclass.
* When you use class B extends A {} you are NOT forced to override every method of class A. Inheritance takes place so you can override as many methods as you want.
* You can use extends only on classes (Dart supports single inheritance).

```dart
/// This is an abstract class.
abstract class Example {
  /// This is an abstract method because it has no body.
  void methodOne();

  /// This is an abstract getter.
  int get calculate;

  /// This is NOT an abstract method because it has a body.
  void methodTwo() {}
}

/// This is a concrete class
class AnotherExample extends Example {
  @override
  void methodOne() {
    print('hello!');
  }

  @override
  int get calculate => 1;
}
```


## **MIXINS** 

A mixin is a sort of class that can be “associated” to another class in order to reuse pieces of code without using inheritance. It requires the with keyword.

* Mixins are useful when you need code sharing without using inheritance.
* When you use class B with A {} you are importing every method of mixin A into your class B. Optionally, the usage of a mixin can be constrained to a certain type using the on keyword.
* You can use with with one or more mixins.

```dart
mixin Breathing {
  void swim() => print("Breathing");
}

mixin Walking {
  void walk() => print("Walking");
}

mixin Coding {
  void code() => print("print('Hello world!')");
}

/// This class now has the `walk()` method
class Human with Walking {}

/// This class now has the `walk()` and `code()` methods
class Developer with Walking, Coding {}
```


## **ON** 

If we wanted, we could also restrict mixins to be applied only on certain types using the on keyword


```dart
mixin BallUtils on Widget {
  // code...
}

/// This code DOESN'T work because 'FootballTeam' is not a subtype of 'Widget'
abstract class FootballTeam with BallUtils {
  // code...
}

// This works because 'StatelessWidget' is a subtype of 'Widget'
class VolleyballPitch extends StatelessWidget with BallUtils {
  // code...
}
```