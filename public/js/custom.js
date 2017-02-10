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
    $('td:nth-of-type(3) a').on('click', function(event){
        event.preventDefault();
        var id = $(this).attr('href');
        var requestUrl = 'message/' + id;

        $.ajax({
            url: requestUrl,
            type: 'get',
            success: function(data) {
                if( $('tr#m' + id + ' :nth-child(3) a').text() == 'Delete' ){
                    $('tr#m' + id).remove()
                } else {
                    $('tr#m' + id).removeClass('unread');
                    $('tr#m' + id + ' :nth-child(3) a').text('Delete');
                }
            }
        });
    });

    $( "main#welcome > *" ).animate({
        opacity: 1
    }, 4000);

    if( location.pathname == "/products/add" ){
        setInterval(function(){
            $('#title').html( $('#titleForm').val() );
            $('.desc p').html( $('#descForm').val().replace("\n", "<br>") );
        }, 500);
    }
});