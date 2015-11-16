$(document).on('ready page:load', function () {
    $('div[data-ajax-source]').each(function() {
        var url = $(this).attr('data-ajax-source');
        var ajaxDiv = $(this);

        $.get(url, function(data) {
            ajaxDiv.html(data);
        });
    });
});