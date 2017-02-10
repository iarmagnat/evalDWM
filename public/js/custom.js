$( document ).ready(function() {

    $('.productCard .desc').hide(0);

    //expends the description of products
    $('.productCard').on('click', function(){
        if ( $(this).hasClass('animated') == false ) {
            if ( $(this).find(".desc" ).hasClass("desc-collapsed") ){
                $(this).addClass('animated');
                $(this).find(".desc").removeClass('desc-collapsed');
                $(this).find(".desc").show(1000, function() {
                    $(this).parent().removeClass('animated')
                });
            } else {
                $(this).addClass('animated');
                $(this).find(".desc").addClass('desc-collapsed');
                $(this).find(".desc").hide(1000, function() {
                    $(this).parent().removeClass('animated')
                });
            }
        }
    });

    //ajax request to mark messages as read
    $('.unread a').on('click', function(event){
        event.preventDefault();
        var id = $(this).attr('href');
        var requestUrl = 'message/' + id;

        $.ajax({
            url: requestUrl,
            type: 'get',
            success: function(data) {
                $('tr#m' + id).removeClass('unread');
                $('tr#m' + id + ' :nth-child(3)').remove();
            }
        });
    });

    $( "main#welcome > *" ).animate({
        opacity: 1
    }, 4000);
});