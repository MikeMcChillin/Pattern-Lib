$ ->    
    printGist = (gist) ->
        $('.html .insert').html gist.repo, " (" + gist.description + ") :"
        $('.html .insert').html gist.div

    $.ajax
        url: "https://api.github.com/users/mikemcchillin/gists"
        #dataType: "jsonp"
        success: printGist
