type response =
  | Yes
  | No
  | PrettyMuch

let fine = Yes

let pet: Zoo.animal = Dog
let pet2 = Zoo.Cat

type account = None | Instagram(string) | Facebook(string, int)

let myAccount = Instagram("gitanjli")

type user = Number(int) | Id({name: string, password: string})

let me = Id({name: "Joe", password: "124343"})

let ram = Zoo.Human

module Unboxedd = {
  type name = Name(string)
  let studentname = Name("gitanjli")

  type greeting = {message: string}
  let hi = {message: "hello!"}
}

module Unboxedd_clean = {
  @unboxed
  type name = Name(string)
  let studentName = Name("gitanjli")

  @unboxed
  type greeting = {message: string}
  let hi = {message: "hello!"}

  @unboxed type listItemVal = String(string) | Boolean(bool) | Number(float)

  let myArray = [String("Hello"), Boolean(true), Boolean(false), Number(13.222)]
}
