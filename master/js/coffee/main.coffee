$ ->    

    breadcrumb = $('.breadcrumb')
    textBox = $('textarea')
    target = 'body'

    textBox.focus ->
        $('.menu').addClass 'inactive'
        $(this).parent().parent().addClass 'focused'
        $(this).parent().addClass 'currently-focused'
        checkIfActive()
    textBox.blur ->
        $('.menu').removeClass 'inactive'
        $(this).parent().parent().removeClass 'focused'
        $(this).parent().removeClass 'currently-focused'
        checkIfActive()


    menuLink = $('.menu a')
    menuLink.click (e) ->
        e.preventDefault()
        $(this).parent().parent().parent().parent().addClass 'inactive'
        breadcrumbText = $(this).text()
        breadcrumb.html(breadcrumbText)
        $("html, body").animate
            scrollTop: $(target).offset().top
              , "easeInOutExpo"
        focusIn()
        checkIfActive()


    focusIn = ->
        $('#html').focus()
    checkIfActive = ->
        if $('.inactive').length is 0
            breadcrumb.removeClass 'bounceInUp'
            breadcrumb.addClass 'bounceOutUp'
        else
            breadcrumb.removeClass 'bounceOutUp'
            breadcrumb.addClass 'bounceInUp'
    


    ###############################
    ## Up & Down Arrows to reveal menu
    ###############################
    left = 37
    up = 38
    right = 39
    down = 40
    document.onkeydown = (e)->
        switch e.keyCode
            ## Show Nav
            when down
                $('.menu').removeClass 'inactive'
                checkIfActive()
            ## Hide Nav
            when up
                $('.menu').addClass 'inactive'
                $("html, body").animate
                    scrollTop: $(target).offset().top
                      , "easeInOutExpo"
                focusIn()
                checkIfActive()
            # when right
            #     $(":input").focus ->
            #        $(this).sibling().next().focus()

                # console.log $('textarea').find(':focus').next('textarea').focus()

    ###############################
    ## Scroll Up to reveal menu
    ###############################
    $(window).scroll ->
        scroll = $(window).scrollTop()
        if scroll < 0
            $('.menu').removeClass 'inactive'
            checkIfActive()
