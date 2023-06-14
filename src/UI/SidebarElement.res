// A singular SidebarElement
// Represents naviagation to one of the 
// main app functional screens/views

@react.component
let make = (~text) => {
    <div>
        <a href="#">{React.string(text)}</a>
    </div>
}