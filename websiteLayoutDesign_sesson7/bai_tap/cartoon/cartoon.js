const playMV = document.querySelectorAll(".list-film .film");

playMV.forEach(function (item, index) {
    item.addEventListener("click", function () {
        console.log(index)
        let srcFilm;
        switch (index){
            case 0:
                srcFilm = "https://youtu.be/AeaD3Q-bFjU?si=tNwLapIaXgmpqqgD";
                break;
            case 1:
                srcFilm = "https://youtu.be/mOUQwVUO4q0?si=vmZA8-UgJT-dDzfZ";
                break;
            case 2:
                srcFilm = "https://youtu.be/tzv86xibN6s?si=Ui6gYaA161TVgJ7M";
                break;
            case 3:
                srcFilm = "https://youtu.be/puHNx_44koE?si=kKjo_ueMBehvFPl-";
                break;
            default:
                srcFilm = "https://youtu.be/AeaD3Q-bFjU?si=tNwLapIaXgmpqqgD";
        }
        document.getElementById("saw").src = srcFilm;
    })
})