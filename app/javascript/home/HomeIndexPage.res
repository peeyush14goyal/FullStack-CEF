module MyHomeComponent = {
  @react.component
  let make = () => {
    //<div> {React.string("Hello ReScripters!")} </div>
    let (count, setCount) = React.useState(_ => 0)
    <div>
      <h1> {React.string("Home Page Component")} </h1>
      <p> {React.string(count->string_of_int)} </p>
      <button onClick={_ => setCount(count => count + 1)}>
        {React.string("Increment Counter")}
      </button>
    </div>
  }
}

let run = () => {
  switch(ReactDOM.querySelector("#reactRoot")){
  | Some(root) => ReactDOM.render(<div> <MyHomeComponent /> </div>, root)
  | None => () // do nothing
  }
}
