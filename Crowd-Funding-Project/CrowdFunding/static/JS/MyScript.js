$.validate({
    modules : 'location, date, security, file',
    onModulesLoaded : function() {
      $('#country').suggestCountry();
    }
  });

var owl = $('.owl-carousel');
let count = $('.owl-carousel .item').length
console.log("mohamed sabry elnagar",count)
if(count > 3){
    owl.owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        autoplay:true,
        autoplayTimeout:2000,
        autoplayHoverPause:true,
        center: true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:3
            },
            1200:{
                items:3
            },
            1400:{
                items:3
            },
            1600:{
                items:3
            },
            1800:{
                items:3
            },
            2000:{
                items:3
            }
        }
    })
}else{
    owl.owlCarousel({
        loop:false,
        margin:10,
        nav:true,
//        autoplay:true,
//        autoplayTimeout:2000,
//        autoplayHoverPause:true,
//        center: true,
//        stagePadding: 50,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:3
            },
            1200:{
                items:3
            },
            1400:{
                items:3
            },
            1600:{
                items:3
            },
            1800:{
                items:3
            },
            2000:{
                items:3
            }
        }
    })
}

owl.on('mousewheel', '.owl-stage', function (e) {
    if (e.deltaY>0) {
        owl.trigger('next.owl');
    } else {
        owl.trigger('prev.owl');
    }
    e.preventDefault();
});
function truncateText(selector, maxLength,i) {
    var element = $(selector);
    var truncated = element[i].innerText;
    if (truncated.length > maxLength) {
        truncated = truncated.substr(0,maxLength) + '...';
    }
    return truncated;
}
for(let i = 0;i < $(".projects_slider").length; i++){
    $(".projects_slider")[i].innerText = truncateText('.projects_slider', 150,i);
}

for(let i = 0;i < $(".projects_details").length; i++){
    $(".projects_details")[i].innerText = truncateText('.projects_details', 250,i);
}

for(let i = 0;i < $(".latest5projects").length; i++){
    $(".latest5projects")[i].innerText = truncateText('.latest5projects', 250,i);
}

