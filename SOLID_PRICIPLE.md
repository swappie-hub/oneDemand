# **S.O.L.I.D PRINCIPLE**

1. Single Responsibility
2. Open/Closed
3. Liskov Substitution
4. Interface Segregation
5. Dependency Inversion


## **Single Responsibility**

A class should only be responsible for one thing that means a class could change for only one reason.


```dart
  class Result {
  checkResult(int rollno) {
    bool isRollnoValidate = Validate().isRollnovalidate();
    if (isRollnoValidate) {
      ResultModel resultModel = NetworkApi().searchResult();
      Printing().showResult(resultModel);
    } else {
      return "Invalid rollno";
    }
  }
}

class Validate {
  // this is responsible for validate
  isRollnovalidate() {
    return true;
  }
}

class ResultModel {}

class Printing {
  // this class is responsible for printing
  showResult(ResultModel model) {
    // show result in pleasant way
  }
}

class NetworkApi {
  // this class is responsible for fetching result
  searchResult() {
    return ResultModel();
  }
}
```

## **Open/Closed**

Classes should be open for extension but closed for modification. In doing so, we stop ourselves from modifying existing code and causing potential new bugs.
It states that for good practise you should be able to add new features without modifying the existing code

```dart
abstract class Result {
  checkResult();
}

class ComputerScience implements Result {
  @override
  checkResult() {
    // some code
  }
}

class Civil implements Result {
  @override
  checkResult() {
    // some code
  }
}

class Mechanical implements Result {
  @override
  checkResult() {
    // some code
  }
}
```


## **Liskov Substitution**

The architecture guarantee that the subclass will maintain the logic correctness of code.Basically prefer composition (with interfaces) over inheritance

```dart
abstract class OfflineResult {
  checkResult();
}

abstract class CodingResult {
  codingTestResult();
}

class MechanicalBranch implements OfflineResult {
  @override
  checkResult() {
    //  some code
  }
}

class ComputerScienceBranch implements OfflineResult, CodingResult {
  @override
  checkResult() {
    // somecode
  }

  @override
  codingTestResult() {
    // somecode
  }
}
```




## **Interface Segregation Principle**

It states that no client should be forced to depend on methods it does not use


```dart
abstract class OfflineResult {
  checkResult();
}

abstract class CodingResult {
  codingTestResult();
}

class MechanicalBranch implements OfflineResult {
  @override
  checkResult() {
    //  some code
  }
}

class ComputerScienceBranch implements OfflineResult, CodingResult {
  @override
  checkResult() {
    // somecode
  }

  @override
  codingTestResult() {
    // somecode
  }
}
```



## **Dependency Inversion Principle**

Abstractions should not depend on details(concrete implementations). They should depend on abstractions.

```dart
abstract class Payment {
 payment();
}

class PaymentViaCreditCard implements Payment
{
  @override
  payment() {
   // some code
  }
   }
class PaymentViaDebitCard implements Payment
{
  @override
  payment() {
   // some code
  }  
}
class PaymentViaBhimUPI implements Payment
{
  @override
  payment() {
   // some code
  } 
}


class Checkout
{
  // our checkout class knows nothing about how payment works 
  // its knows pay.payment() is paying method 
  checkOut(Payment pay)
  {
    pay.payment();
  }
}
```



Reference : https://medium.flutterdevs.com/s-o-l-i-d-principles-in-dart-e6c0c8d1f8f1