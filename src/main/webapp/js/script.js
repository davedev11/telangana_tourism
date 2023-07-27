let navbarDiv = document.querySelector('.navbar');
window.addEventListener('scroll', () => {
    if(document.body.scrollTop > 40 || document.documentElement.scrollTop > 40){
        navbarDiv.classList.add('navbar-cng');
    } else {
        navbarDiv.classList.remove('navbar-cng');
    }
});


const navbarCollapseDiv = document.getElementById('navbar-collapse');
const navbarShowBtn = document.getElementById('navbar-show-btn');
const navbarCloseBtn = document.getElementById('navbar-close-btn');
// show navbar
navbarShowBtn.addEventListener('click', () => {
    navbarCollapseDiv.classList.add('navbar-collapse-rmw');
});

// hide side bar
navbarCloseBtn.addEventListener('click', () => {
    navbarCollapseDiv.classList.remove('navbar-collapse-rmw');
});

document.addEventListener('click', (e) => {
    if(e.target.id != "navbar-collapse" && e.target.id != "navbar-show-btn" && e.target.parentElement.id != "navbar-show-btn"){
        navbarCollapseDiv.classList.remove('navbar-collapse-rmw');
    }
});


/* 
take details for booking in each package */

function fareDetails(){
    var takeinput = document.getElementById("form-section");

    if(takeinput.style.display == "none"){
        takeinput.style.display = "block";
    }
    

}

// function UserDetails(){
//     var giveinput = document.getElementById("user-section");

//     if(giveinput.style.display == "none"){
//         giveinput.style.display = "block";
//     }
   

// }



function openbooknowP1(){
    window.location.href = "pagepk1.jsp";
}
function openbooknowP2(){
    window.location.href = "pagepk2.jsp";
}
function openbooknowP3(){
    window.location.href = "pagepk3.jsp";
}
function openbooknowP4(){
    window.location.href = "pagepk4.jsp";
}


// stop transition and animatino during window resizing
let resizeTimer;
window.addEventListener('resize', () => {
    document.body.classList.add("resize-animation-stopper");
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(() => {
        document.body.classList.remove("resize-animation-stopper");
    }, 400);
});


