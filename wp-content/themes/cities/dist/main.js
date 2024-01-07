(function($) {


$("#burger, #x").click(function(){
    $(".menu").toggleClass("open");
    $("#x").toggle();
});



//Per Page Effects

$(document).ready(function(){


    $(".minted-image").fancybox();

    if($('body').hasClass('home')){
        var quote_items = $('#quotes .quote').length;
        var currentQuote = 1;

        setInterval(function() {
            $('#quotes .quote').hide();
            $("#quotes .quote[data-id='"+currentQuote+"']").fadeIn();
            currentQuote = currentQuote+1 < quote_items ? currentQuote+1 : 0;
        },5000);

    }




    //Counter
    // Set the date we're counting down to
    var countDownDate = new Date(end_date + " GMT").getTime();

    // Update the count down every 1 second
    var x = setInterval(function() {

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Display the result in the element with id="demo"
    document.getElementById("counter-numbers-days").innerHTML = days > 9 ? days : "0"+days;
    document.getElementById("counter-numbers-hours").innerHTML = hours > 9 ? hours : "0"+hours;
    document.getElementById("counter-numbers-minutes").innerHTML = minutes > 9 ? minutes : "0"+minutes;
    document.getElementById("counter-numbers-seconds").innerHTML = seconds > 9 ? seconds : "0"+seconds;

    const zeros = "00";
    // If the count down is finished, write some text
    if (distance < 0) {
        clearInterval(x);
        ddocument.getElementById("counter-numbers-days").innerHTML = zeros;
        document.getElementById("counter-numbers-hours").innerHTML = zeros;
        document.getElementById("counter-numbers-minutes").innerHTML = zeros;
        document.getElementById("counter-numbers-seconds").innerHTML = zeros;
    }
    }, 1000);

        });



})( jQuery );
