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
}
