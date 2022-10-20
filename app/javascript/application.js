// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
import "controllers"

var hamburger = document.querySelector(".hamburger");
hamburger.addEventListener("click", function(){    
    document.querySelector("body").classList.toggle("active");
    document.querySelector("body").classList.toggle("show");
})


var sidebar = document.querySelectorAll(".sidebarlinks")
.forEach(item => {
    item.addEventListener("click", function(){        
        let width = screen.width;
        if(width < 413 ){
            document.querySelector("body").classList.toggle("show");    
            document.querySelector("body").classList.toggle("active");
        }        
    })
})
