$(document).ready(function () {
    $(".menuBar").bind("mouseover", function(){
        changeMenuImageWithExtension($(this)[0], "_up.svg");
    });

    $(".menuBar").bind("mousedown", function(){
        changeMenuImageWithExtension($(this)[0], "_dn.svg");
    });

    $(".menuBar").bind("mouseup", function(){
        changeMenuImageWithExtension($(this)[0], "_up.svg");
    });

    $(".menuBar").bind("mouseout", function(){
        changeMenuImageWithExtension($(this)[0], ".svg");
    });
});

function changeMenuImageWithExtension(menuItem, extension) {
    var menuText = menuItem.src.split("/");
    var folderName = menuText[menuText.length-2];

    menuItem.src = "/assets/menubar/" + folderName + "/" + folderName + extension;
}