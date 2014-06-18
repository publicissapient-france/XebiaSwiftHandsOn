// Playground - noun: a place where people can play

import UIKit

var string = "hello" // var declaration
let const = "hello"  // constant declaration

string += " world"  // copy
const += " world"   // code safety

///

var hello = "hello"
var hello2 = hello

hello == hello2
hello += " world"
hello == hello2

///

var dict = ["i":0, "j":1]
var dict2 = dict

dict == dict2
dict["i"] = 1
dict == dict2

///

var array = [0,1]
var array2 = array.copy()

array == array2
array[0] = 1
array == array2
