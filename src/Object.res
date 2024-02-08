module A = {
  type person = {"name": string, "age": int} //field names are quoted
  let me = {
    "name": "gitanjli",
    "age": 23,
  }

  type p = {"age": string}
  let me = {
    "age": "23",
  }
  let mei: p = {
    "age": "23",
  }

  let age = mei["age"]

  type student = {@set "age": int, @set "name": string}
  @module("./MyJsFile.js") external student1: student = "student1"
  //   @module("someJsFile") external student1: student = "student1"
  Js.log(student1)
  //student1["name"] = "gitanjli"
  //Js.log(student1["name"])

  type point2d = {"x": float, "y": float}
  type point3d = {...point2d, "z": float}
  let mypoint: point3d = {
    "x": 3.3,
    "y": 2.4,
    "z": 4.22,
  }
  Js.log(mypoint)
}

module B = {
  //   @val external document: 'a = "document"
  //   document["addEventListener"]("mouseup", _event => {Console.log("clicked!")})
  //   let loc = document["location"]
  //   document["location"]["href"] = "rescript-lang.org"
}
