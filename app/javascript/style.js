const getAllDivs = () => {
    let divs = document.querySelectorAll("div");
    return divs
}

const changeAllDivsColor = () => {
    getAllDivs().forEach(div => {
        div.className = "style-on-load"
    })
}

const changeDivColor = (event) => {
    const { target } = event
    
    if (target.tagName === "DIV") {
        if (target.style.backgroundColor === "" || target.style.backgroundColor === "blue") {
            target.style.backgroundColor = "pink"
        } else {
            target.style.backgroundColor = "blue"
        }
    }
}


document.addEventListener('turbolinks:load', changeAllDivsColor)
document.addEventListener('click', changeDivColor)
