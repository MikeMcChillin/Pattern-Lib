$ ->    
    # printGist = (gist) ->
    #     $('.html .insert').html gist.repo, " (" + gist.description + ") :"
    #     $('.html .insert').html gist.div

    # $.ajax
    #     url: "https://api.github.com/users/mikemcchillin/gists"
    #     #dataType: "jsonp"
    #     success: printGist



    textBox = $('textarea')
    textBox.focus ->
        $('.menu').addClass 'inactive'
        $(this).parent().parent().addClass 'focused'
        $(this).parent().addClass 'currently-focused'
    textBox.blur ->
        $('.menu').removeClass 'inactive'
        $(this).parent().parent().removeClass 'focused'
        $(this).parent().removeClass 'currently-focused'


    ###############################
    ## Up & Down Arrows to reveal menu
    ###############################
    up = 38
    down = 40
    document.onkeydown = (e)->
        switch e.keyCode
            when down then $('.menu').removeClass 'inactive'
            when up
                $('.menu').addClass 'inactive'
                target = 'body'
                $("html, body").animate
                    scrollTop: $(target).offset().top
                      , 1000#, "easeInOutExpo"
    ###############################
    ## Scroll Up to reveal menu
    ###############################
    $(window).scroll ->
        scroll = $(window).scrollTop()
        if scroll < 0
            $('.menu').removeClass 'inactive'
