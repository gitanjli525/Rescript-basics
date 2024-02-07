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

module B = {
  type c = {
    name: string,
    age: option<int>,
  }
  type d = {
    name: string,
    age?: int,
  }
  let nameFromD = (d: d) => d.name

  let c: c = {
    name: "gitanjli",
    age: Some(23),
  }

  //let name = nameFromD((c :> d))
}
