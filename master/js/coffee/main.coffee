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



