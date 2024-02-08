let mycolor = #red
let mylabel = #"aria-hidden"
let mynumber = #7

type color = [#red | #green | #blue]

let render = mycolor => {
  switch mycolor {
  | #blue => Console.log("hello blue!")
  | #red
  | #green =>
    Console.log("Hello this is red or green")
  | #yellow => Console.log("this is yellow")
  }
}

// let render = mycolor: color => {
//   switch mycolor {
//   | #blue => Console.log("hello blue!")
//   | #red
//   | #green =>
//     Console.log("Hello this is red or green")
//   | #yellow => Console.log("this is yellow")
//   }
// }
