external convertToFloat: int => float = "%identity"

let age = 23

let new_age = 1.1 +. convertToFloat(age)

Console.log(new_age)

external convertToString: int => string = "%identity"
let age = 23
let new_age = "gita" ++ convertToString(age)
Console.log(new_age)

let x = 5

let y = ref(5)
y := y.contents + 1

let message = "hello gitanjli"
Console.log(`hello ${message}`)

if 4 > 2 {
  Js.log("Hello")
} else {
  Js.log("bye")
}

if 4 > 2 {
  Console.log("gitanjli")
} else {
  Console.log("gitu")
}

1 === 1 ? {Console.log("equal")} : {Console.log("unequal")}

type student = {
  name: string,
  age: int,
}

let student1 = {
  name: "Gitanjli",
  age: 23,
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

let myFunction = (input: string) => {
  if input == "valid" {
    Success("Operation success")
  } else {
    Failure("Operation error")
  }
}

let result = myFunction("valid")
switch result {
| Success(message) => Js.log("Success: " ++ message)
| Failure(message) => {
    Js.log("from this switch statement")
    Js.log("Faliure: " ++ message)
  }
}

let g = ref("gitanjli")
g := g.contents ++ "chopra"
Console.log(g)

// let convertBoolToString = val => {
//   switch val {
//   | true => "true"
//   | false => "false"
//   }
// }

let convertBoolToString = val => {
  switch val {
  | true => "true"
  | false => "false"
  }
}

let status = if true {
  true
} else {
  false
}
Console.log(status)
Console.log("status above")
Console.log(`${status->convertBoolToString}++ status`)
let status = if true {
  Js.log("true")
} else {
  Js.log("false")
}
Console.log(status) //nothing is getting returned
// Console.log(`${status->bool.toString}++ status`) //throws error as nothing is in status

type point = {
  x: int,
  mutable y: int,
}

let point1 = {
  x: 35,
  y: 40,
}

point1.y = 90
Console.log(point1.x)
Console.log(point1.y)

let point2 = {...point1, x: 60}
Console.log(point2.x)
Console.log(point2.y)

external convertToInt: string => int = "%identity"

let arrayA = [1, 2, 3, 4]
// Console.log(arrayA[0] + convertToInt("array A 0th item"))

Js.log(`${arrayA[0]->Option.getOr(0)->Int.toString} 0th item array`)

Js.log(`hey, this is gitanjli, i am ${age->Int.toString} years old`)

// type fetch

// @val external fetch : (string) => () = "fetch"

// let named = async (arg) =>{
//   let response = await fetch("/endpoint")
// }

for i in 0 to 10 {
  Js.log(i)
}

for i in 10 downto 0 {
  Js.log(i)
}

let val = ref(true)
while val.contents == true {
  Js.log("true")
  // val := !val.contents
  val := false //syntax sugar
}

// let gh = 0
// let gh1 = calculate(gh)
// let gh2 = calculateSomeMore(gh1)

let abc = "hello"
Console.log(abc)
let abc = 1
Console.log(abc)

module A: {
  let b: int
} = {
  let a = 3
  let b = 4
}

module B = {
  %%private(let a = 3)
  let b = 5
}

let add = (a: int, b: int): int => {
  x + b
}

let drawCircle = (~radius as r: int): string => {
  let circle = "perfect circle"
  circle
}

type gita = int
let x: gita = 23

type intcoordinates = (int, int, int)
let position = (1, 2, 2)

type coordinates<'a> = ('a, 'a, 'a)

let a: coordinates<int> = (1, 2, 2)
let b: coordinates<string> = ("top", "right", "up")

type res<'a, 'b> =
  | Ok('a)
  | Error('b)

type myPayload = {data: string}

type myPayloadResults<'errorType> = array<res<myPayload, 'errorType>>

let payloadResults: myPayloadResults<string> = [
  Ok({data: "hi"}),
  Ok({data: "bye"}),
  Error("Something wrong happened"),
]

type rec person = {
  name: string,
  friends: array<person>,
}

// type rec student = {taughtBy: teacher}
// and teacher = {students: array<student>}

let name3 = "gitan"

let greet = ` hello
  world
  &|}
  ""
  ${name3}
 `

Js.log(greet)

let str = String.make([1, 2, 3])
Console.log(str)

Console.log(String.fromCharCode(0xd55c))

Console.log(String.fromCharCodeMany([189, 43, 190, 61]))
Console.log(String.fromCharCodeMany([190]))
Console.log(String.fromCharCode(-5))

let firstchar = 'G'
Js.log(firstchar)

Js.log(String.get("a", 0))
//Js.log(String.make(1, 'a'))

type fruits = {
  taste: string,
  rank: int,
}

let banana = {
  taste: "sweet",
  rank: 1,
}

let red: G.colors = {
  color: "red",
  length: 3,
}

let emp: H.developer = "gitanjli"
Console.log(emp)

let orange = {G.color: "orange", G.length: 6}

let color_name = orange.color
Js.log(color_name)

let pink = {...orange, color: "pink"}

type editors = {
  name: string,
  mutable worked_on: int,
}

let vSCode = {
  name: "Visual Studio Code",
  worked_on: 0,
}

vSCode.worked_on = vSCode.worked_on + 1

module C = {
  type person = {
    name: string,
    mutable age: int,
  }

  let baby = {
    name: "Baby rescript",
    age: 5,
  }
  baby.age = baby.age + 1

  type color = {
    color: string,
    length?: int,
  }

  let red = {
    color: "red",
  }
}
