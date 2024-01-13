   var videoplayer = document.getElementById("wlns-vdo-player");
var myvideo = document.getElementById("wellness-my-vdo");
var ka=document.getElementById("kakaka")
// var li=document.getElementById("lilili");


function stopVideo() {
    myvideo.pause();
    videoplayer.style.display = "none";
  ka.style.display="block"
//  li.style.marginTop="20px";
  
}

function playVideo(file) {
    myvideo.src = file;
    videoplayer.style.display = "block";
    ka.style.display="none"
    
    
    myvideo.play();
}
