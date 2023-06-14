// module Root = {
//     type t
//     @send external render: (t, React.element) => unit = "render"
// }

// @val @module("react-dom/client")
// external createRoot: Dom.element => Root.t = "createRoot"

// ReactDOM.querySelector("app")
// ->Belt.Option.getExn
// ->createRoot
// ->Root.render(
//     <App />
// )

// Dom access can actually fail. ReScript
// is really explicit about handling edge cases!
switch ReactDOM.querySelector("#app") {
| Some(rootElement) => {
    let root = ReactDOM.Client.createRoot(rootElement)
    ReactDOM.Client.Root.render(root, <App />)
  }
| None => Js.log("Whoops")
}