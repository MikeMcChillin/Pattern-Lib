// Generated by CoffeeScript 1.3.3
(function() {

  $(function() {
    var gistURL, jqxhr;
    gistURL = 'https://api.github.com/users/mikemcchillin/gists';
    jqxhr = $.getJSON(gistURL, function() {}).success(function() {}).error(function() {}).complete(function() {});
    return jqxhr.complete(function() {
      return alert("second complete");
    });
  });

}).call(this);