var set=document.getElementById("set");
var b1 =document.getElementById("frequency");
var b2 =document.getElementById("time");
set.onchange = function () {
    var index = set.selectedIndex;
    // alert(index);
    if (index == 0){
        b1.style.display = 'block';
        b2.style.display = 'none';
    }
    else if(index == 1){
        b1.style.display = 'none';
        b2.style.display = 'block';
    }

}
