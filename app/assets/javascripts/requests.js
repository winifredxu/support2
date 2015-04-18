//Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

  var check_search = function(evt) {
    evt.preventDefault();
    var url_str = $(evt).attr("href");
    var search_str = $('#search').val();

    if (search_str === "") {
      alert("search is empty, url is "+url_str);
    } else {
      alert("search_str is "+search_str+", url is "+url.str);
    }

  };

});

/*
  $.ajax({
    type: "POST",
    url: , 
    data: { _method: 'PATCH' }
  })
*/

