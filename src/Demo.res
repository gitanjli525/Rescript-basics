external convertToFloat : int => float = "%identity"

let age = 23

let new_age = 1.1 +. convertToFloat(age)

Console.log(new_age)

let x=5

let y = ref(5)

y := y.contents + 1

let message = "gitanjli"
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


let sum: int = 3 + 4
Js.log(sum)



