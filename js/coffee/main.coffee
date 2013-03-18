$ ->
    gistURL = 'https://api.github.com/users/mikemcchillin/gists'
    # Assign handlers immediately after making the request,
    # and remember the jqxhr object for this request
    jqxhr = $.getJSON(gistURL, ->
        #alert "success"
    ).success(->
        #alert "second success"
    ).error(->
        #alert "error"
    ).complete(->
        #alert "complete"
    )
    
    # perform other work here ...
    
    # Set another completion function for the request above
    jqxhr.complete ->
      alert "second complete"
    