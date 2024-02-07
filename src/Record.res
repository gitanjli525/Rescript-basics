module A = {
  type a = {
    id: string,
    name: string,
    age: int,
    working: bool,
  }

  type b = {
    name: string,
    age: int,
  }

  let nameFromB = (b: b) => b.name

  let a: a = {
    id: "1",
    name: "gitu",
    age: 35,
    working: true,
  }

  let name = nameFromB((a :> b))
  Js.log(name)
}
