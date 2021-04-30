const fetchEntries = (entriesContainer) => {
    const guest_book_id = entriesContainer.getAttribute("data-guest-book-id")
    fetch(`/guest_books/${guest_book_id}/guest_book_entries`).then(response => {
        response.text().then(text => {
            entriesContainer.innerHTML = text;
        })
    })
}

const populateEntriesContainer = () => {    
    const entriesContainer = document.querySelector(".entries")
    fetchEntries(entriesContainer)
}

const refreshEntries = () => {
    setInterval(populateEntriesContainer, 3000)
}

document.addEventListener('turbolinks:load', refreshEntries)