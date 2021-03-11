
type status =
| Idle
| Active

let runRescript = () => {
  Js.log("Hello to Rescript")

  let s = Active
  Js.log(s)
}
