$(document).ready(function () {
    $("a.flickrImage").fancybox({
        'cyclic' : true,
        'titlePosition' : 'over',
        'autoScale' : true
    });

    $("a.fancyboxImage").html('Vis stort bilde').bind("click", function(e) {
        $("#img_" + $(this).attr("id")).trigger('click');
    }).show();
});