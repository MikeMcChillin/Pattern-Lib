// Generated by CoffeeScript 1.3.3
(function() {

  $(function() {
    var printGist;
    printGist = function(gist) {
      $('.html .insert').html(gist.repo, " (" + gist.description + ") :");
      return $('.html .insert').html(gist.div);
    };
    return $.ajax({
      url: "https://api.github.com/users/mikemcchillin/gists",
      success: printGist
    });
  });

}).call(this);
