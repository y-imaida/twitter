ready = ->
    $(window).scroll ->
        element = $('#page-tweets-top-btn')
        visible = element.is(':visible')
        height = $(window).scrollTop()
        if height > 400
            element.fadeIn() if !visible
        else
            element.fadeOut()
    $(document).on 'click', '#move-page-tweets-top', ->
        $('html, body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)
