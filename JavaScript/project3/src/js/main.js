window.onload = () => {
    detectColor();
}

var colors = ["blue", "pink", "white", "violet", "black", "green", "red", "yellow"];

function detectColor() {
    var buttons = document.querySelectorAll('#container div');
    for (var i = 0; i < buttons.length; i++) {
        var button = buttons[i];
        button.addEventListener("click", function () {           
            changeBgColor(colors[RandomColor()]);
        })
    }
}

function changeBgColor(color) {
    document.getElementsByTagName("body")[0].style.backgroundColor = color;
}

function RandomColor() {
    return Math.floor(Math.random() * colors.length);
}