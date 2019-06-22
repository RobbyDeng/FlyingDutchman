var type = document.getElementById("type");
var price = document.getElementById("price");
var flight = document.getElementById("flight");
var weather = document.getElementById("weather");
var type_pf = document.getElementById("type_pf");
var pf = document.getElementById("pf");
var w = document.getElementById("w");
var upload_file = document.getElementById("upload_file");
var parameter = document.getElementById("parameter");
// var type_w = document.getElementById("type_w");

var python_api = document.getElementById("python_api");
var sql =document.getElementById("sql");

type.onchange = function () {
    var index = type.selectedIndex;
    if(index == 0){
        pf.style.display = "block";
        w.style.display = "none";
        upload_file.style.display = 'block';
        parameter.style.display="none";
        python_api.style.display= "block";
        sql.style.display ="none";
    }
    else if(index == 1){
        pf.style.display = "block";
        w.style.display = "none";
        upload_file.style.display = 'block';
        parameter.style.display="none";
        python_api.style.display= "block";
        sql.style.display ="none";
    }
    else if(index == 2){
        pf.style.display = "block";
        w.style.display = "none";
        upload_file.style.display = 'block';
        parameter.style.display="none";
        python_api.style.display= "block";
        sql.style.display ="none";

    }
    else if (index == 3){
        pf.style.display = "none";
        w.style.display = "block";
        upload_file.style.display = 'none';
        parameter.style.display="block";
        price.style.display = "none";
        flight.style.display = "none";
        weather.style.display = 'block';
        python_api.style.display= "block";
        sql.style.display ="none";

    }
    else if(index == 4){
        pf.style.display = "none";
        w.style.display = "block";
        upload_file.style.display = 'none';
        parameter.style.display="block";
        price.style.display = "none";
        flight.style.display = "none";
        weather.style.display = 'block';
        python_api.style.display= "block";
        sql.style.display ="none";

    }
    else if(index == 5){
        python_api.style.display= "none";
        sql.style.display ="block";

    }
};

type_pf.onchange = function () {
    var index_pf = type_pf.selectedIndex;
    if(index_pf == 0){
        price.style.display = "block";
        flight.style.display = "none";
        weather.style.display = "none";
    }
    else if(index_pf == 1){
        price.style.display = "none";
        flight.style.display = "block";
        weather.style.display = "none";
    }
};




