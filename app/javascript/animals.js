const fetchAnimal = (targetAnimal) => {
    const animal_id = targetAnimal.getAttribute("data-animal-id")
        
    fetch(`/animals/${animal_id}`).then(response => {
        response.json().then(data => {
            alert(data.sound)
        })
    })
}

const animalClicked = (event) => {
    const { target } = event
    if (target.tagName === "DIV" || target.tagName === "IMG" || target.tagName === "P") {
        fetchAnimal(target.closest(".animal-container"))
    }
}

document.addEventListener('click', animalClicked)