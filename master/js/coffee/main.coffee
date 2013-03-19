$ ->    
    # printGist = (gist) ->
    #     $('.html .insert').html gist.repo, " (" + gist.description + ") :"
    #     $('.html .insert').html gist.div

    # $.ajax
    #     url: "https://api.github.com/users/mikemcchillin/gists"
    #     #dataType: "jsonp"
    #     success: printGist


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
        $('#html').focus()
        checkIfActive()



    checkIfActive = ->
        if $('.inactive').length is 0
            breadcrumb.removeClass 'bounceInUp'
            breadcrumb.addClass 'bounceOutUp'
        else
            breadcrumb.removeClass 'bounceOutUp'
            breadcrumb.addClass 'bounceInUp'

    # Define an extended mixed-mode that understands vbscript and
    # leaves mustache/handlebars embedded templates in html mode
    # mixedMode =
    #     name: "htmlmixed"
    #     scriptTypes: [
    #         matches: /\/x-handlebars-template|\/x-mustache/i
    #         mode: null
    #     ,
    #         matches: /(text|application)\/(x-)?vb(a|script)/i
    #         mode: "vbscript"
    #     ]

    # editor = CodeMirror.fromTextArea($('#html'),
    #     mode: mixedMode
    #     tabMode: "indent"
    # )



    ###############################
    ## Load Data via JSON
    ###############################
    #$.getJSON "json.json", (json) ->
     #   console.log json # this will show the info it in firebug console



    # you have your items here

    


    ###############################
    ## Up & Down Arrows to reveal menu
    ###############################
    up = 38
    down = 40
    document.onkeydown = (e)->
        switch e.keyCode
            when down
                $('.menu').removeClass 'inactive'
                checkIfActive()
            when up
                $('.menu').addClass 'inactive'
                $("html, body").animate
                    scrollTop: $(target).offset().top
                      , "easeInOutExpo"
                checkIfActive()
    ###############################
    ## Scroll Up to reveal menu
    ###############################
    $(window).scroll ->
        scroll = $(window).scrollTop()
        if scroll < 0
            $('.menu').removeClass 'inactive'
            checkIfActive()
