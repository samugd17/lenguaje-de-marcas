window.onload = () => {
    getData();
    alertName();
}

function getData() {
    document.querySelector("form").addEventListener("submit", e => {
        e.preventDefault()
        const data = Object.fromEntries(new FormData(e.target))
        console.log(JSON.stringify(data))
    })
}

function alertName() {
    var name_lenght = document.querySelectorAll("#name").length;
    document.querySelector("form").addEventListener("submit", e => {
        e.preventDefault()
    if (name_lenght < 6) {
        alert("El nombre debe tener más de 6 caracteres")
    }
})
}

function correctEmail() {
    let mail = document.getElementById("email")
    document.querySelector("form").addEventListener("submit", e => {
        e.preventDefault()
    let regex = /\w+@\w+.com/
    })
}