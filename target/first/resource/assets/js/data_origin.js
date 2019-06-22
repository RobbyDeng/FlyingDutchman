var type = document.getElementById("type");
var py = document.getElementById("python");
var api = document.getElementById("API");
var sql = document.getElementById("sql");

type.onchange = function () {
    var index = type.selectedIndex;
    if(index == 0){
        py.style.display = "block";
        api.style.display = "none";
        sql.style.display = "none";
    }
    else if(index == 1){
        py.style.display = "none";
        api.style.display = "block";
        sql.style.display = "none";
    }
    else if(index == 2){
        py.style.display = "none";
        api.style.display = "none";
        sql.style.display = "block";
    }
}