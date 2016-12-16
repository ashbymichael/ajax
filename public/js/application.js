$(document).ready(function() {
  $('.action-button').on('click', function(e) {
    e.preventDefault();
    var targetUrl = $(e.target).closest('a').attr('href');

    $.ajax({
      url: targetUrl
    }).done(function(res) {
      $('#content').html(res);
    })
  })
});
