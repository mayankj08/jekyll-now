---
layout: post
title: References in C++ 
tags: [ c++ ]
comments : true
---

Starting from this post we will talk about lvalue references, pointers, rvalue references, move semantics etc.

This is first post in this series. You will find all the post of this series here.

This post will talk just about references (lvalue references to be precise). But if you don't understand how lvalue references differ from rvalue references don't worry we will try to understand all these jargons in this series.

# What is meant by references?

A `reference` defines an alternative name for an object. A reference type 'refers to' another type. Reference is like an alias for another variable.

# Defining a reference

```c
int a =10;
int refA = &a;
```

In above snippet we bound a reference `refA` to integer variable `a`. In other word `refA` is alias for `a`.

# Few important points to remember

1. A reference is not an object. Reference, is just another name for an object.
2. It is necessary to initialize references.
3. There's no way to rebind references. Once bound a reference remains bound to its initial object.
4. All the operations on a reference are actually on object to which reference is bound.
5. With few expections the type of reference should match the type of object to which reference is bound.	
6. As references are not objects so we can't define reference to a reference. 

Let's try to understand all above points in detail.

#### A reference is not an object. Reference, is just another name for an object.

Not much to say here. Just don't think of references as object.

#### It is necessary to initialize references.

Initializing a reference is necessary. 

```c
int a = 10;
int &refA;     // Error
```

`int &refAl;` is illegal, as we have not initialized the reference named `refA`. 

#### There's no way to rebind references. Once bound a reference remains bound to its initial object.

References reamins bounded to the object which it was initialized with through out the life of reference. 

From Point 2 and 3 we can conclude that references can't be bound to NULL as intialization of references is necessary and also we can't rebind them. So there's no way of binding reference to NULL.

Let's understand this with an example. 

```c
int a = 10;
int b = 20;
int &refA = a;
refA = b;
```
Now assume that we allowed references to rebound. In this case `refA = b` in above code snippet can mean one of below two:  
* Rebound reference `refA` to b.  
* Change the value of object pointed by `refA`, which is `a` to 20. 

So it would be quite ambigous if rebinding references would have been allowed. So in C++ statement `refA = b` would mean that value of `a` is change to 20.

#### All the operations on a reference are actually on object to which reference is bound.

```c
#include<iostream>

int main(){
   int a =10;
   int b = 20;
   int &refA = a;
   int &refB = b;
   std::cout << refA + refB ; //Ouput : 30
}
```
Adding `refA` and `refB` actually performs operation on `a` and `b`. When we assign to a reference, we are assigning to the object to which the reference is bound. When we fetch the value of a reference, we are really fetching the value of the object to which the reference is bound. Similarly, when we use a reference as an initializer, we are really using the object to which the reference is bound.

#### With few expections the type of reference should match the type of object to which reference is bound.

```c
float a =10;
int &refA = a;
```
We define `a` of type float, but we are trying to bind this object to reference of type int. This is not allowed.

#### As references are not objects so we can't define reference to a reference. 

Just as we define pointers to pointers we can't define references to references. 

This was about basics of reference. We will continue this series in next blog post.

Till then [Sayonara](https://www.google.com/#q=sayonara).

Thanks.

