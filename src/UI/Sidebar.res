// // Sidebar component, used to house navigation buttons

@react.component
let make = () => {
    open SidebarUtils
    let displayTexts = ["Home", "About", "Services", "Contact"]

    <div className="bg-primary flex flex-col w-fill h-full min-h-screen p-2">
        {makeElementsForSidebar(displayTexts)}
    </div>
}
