// Various utilities for Sidebar component

let makeElementsForSidebar = displayTexts => {
    Belt.Array.map(displayTexts, text => <SidebarElement text key=text/>)
    ->React.array
}