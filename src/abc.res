  external convertToFloat : int => float = "%identity"

  let age = 23

  let new_age = 1.1 +. convertToFloat(age)

  Console.log(new_age)

  external convertToString : int => string = "%identity"
  let age = 23
  let new_age = "gita" ++ convertToString(age)
  Console.log(new_age)

  let x=5

  let y = ref(5)
  y := y.contents + 1

  let message = "hello gitanjli"
  Console.log(`hello ${message}`)

if (4 > 2) {Js.log("Hello")} else {Js.log("bye")}

if (4 > 2) {Console.log("gitanjli")} else {Console.log("gitu")}

(1 === 1) ?  {Console.log("equal")} : {Console.log("unequal")}


type student = {
  name : string,
  age: int
}

let student1 = {
  name: "Gitanjli",
  age: 23
}

let {age} = student1

type result = 
| Success(string) 
| Failure(string)

let myResult = Success("I did it!")

switch myResult {
  | Success(message) => Js.log(message)
  | Failure(error) => Js.log("Failure: " ++ error)
}


let myFunction = (input : string) => {
	if(input == "valid") { 
      Success("Operation success")
  	} else {
      Failure("Operation error")
  }
}

let result = myFunction("valid")
switch result {
	| Success(message) => {
  	Js.log("Success: " ++ message)
  }
  | Failure(message) => {
    Js.log("from this switch statement")
    Js.log("Faliure: " ++ message)
  }
}

let g = ref("gitanjli")
g := g.contents ++ "chopra"
Console.log(g)

if(true) {Js.log("true")} else {Js.log("false")}

type point = {
  x: int, 
  mutable y: int
}

let point1 = {
  x : 35,
  y: 40
}

point1.y = 90
Console.log(point1.x)
Console.log(point1.y)

let point2 = {...point1, x:60}
Console.log(point2.x)
Console.log(point2.y)

external convertToInt : string => int = "%identity"

let arrayA = [1,2,3,4]
// Console.log(arrayA[0] + convertToInt("array A 0th item"))

Js.log(`${arrayA[0]->Option.getOr(0)->Int.toString} 0th item array`)





















