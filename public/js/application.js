$(document).ready(function() {
  $('#content').on('click', '.action-button', function(e) {
    e.preventDefault();
    var targetUrl = $(e.target).closest('a').attr('href');

    $.ajax({
      url: targetUrl
    }).done(function(res) {
      $('#content').html(res);
    })
  })
});
