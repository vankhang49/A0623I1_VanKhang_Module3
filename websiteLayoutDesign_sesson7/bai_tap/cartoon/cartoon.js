const playMV = document.querySelectorAll(".list-film .film");
playMV.forEach(function (item, index) {
    item.addEventListener("click", function () {
        console.log(index)
        document.getElementById("saw").src = "./videos/Tập " + (index + 1) + ".mp4";
    })
})