var slideIndex=0;
window.onload=function(){
  showDivs();
}

function showDivs() {
	var i;

  var x = document.getElementsByClassName("mySlides");
  var y = document.getElementsByClassName("icon_slide_item");
for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
    y[i].style.background = "transparent";
	y[i].style.border = "1px black solid";
  }
slideIndex++;
	if (slideIndex > x.length) {slideIndex = 1}
	
  x[slideIndex-1].style.display = "block";  
  y[slideIndex-1].style.background = "white";
  y[slideIndex-1].style.border = "1px white solid";
setTimeout(showDivs, 2000);
};