$(document).ready(function () {
    $(".menuBar").bind("mouseover mouseup", function(){
        changeMenuImage($(this), "_up");
    });

    $(".menuBar").bind("mousedown", function(){
        changeMenuImage($(this), "_dn");
    });

    $(".menuBar").bind("mouseout", function(){
        changeMenuImage($(this), "");
    });
});

function changeMenuImage(menuItem, extension) {
    var menuClasses = menuItem.attr("class").split(" ");
    var menuClass = menuClasses[1].split("-");
    var menuName = menuClass[0];

    menuItem.removeClass(menuClasses[1]).addClass(menuName + "-" + menuName + extension);
}