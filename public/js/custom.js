$( document ).ready(function() {
    $('.productCard').on('click', function(){
        if ( $(this).find(".desc" ).hasClass("hidden") ){
            $(this).find(".desc").removeClass('hidden');
        } else {
            $(this).find(".desc").addClass('hidden');
        }
    })
});