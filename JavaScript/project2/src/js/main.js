window.onload = () => {
    detectColor();
}
function detectColor() {
    var buttons = document.querySelectorAll('#container div');
    for (var i = 0; i < buttons.length; i++){
        var button = buttons[i];
        button.addEventListener("click", function () {
        changeBgColor(this.id);
    
    })
}
}

function changeBgColor(color) {
    document.getElementsByTagName("body")[0].style.backgroundColor = color;
}