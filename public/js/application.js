$(document).ready(function() {
  $('#content').on('click', '.action-button', function(e) {
    e.preventDefault();
    var targetUrl = $(e.target).closest('a').attr('href');

    $.ajax({
      url: targetUrl
    }).done(function(res) {
      $('#content').html(res);
    });
  });

  $('#content').on('submit', '.comment-form', function(e) {
    e.preventDefault();
    var commentField = $(e.target).children('input').first();
    var newComment = commentField.val();
    var targetUrl = $(e.target).attr('action');

    $.ajax({
      url: targetUrl,
      method: 'POST',
      data: {body: newComment}
    }).done(function(res) {
      commentField.val('');
      $('.comment-list').first().prepend(res);
    })

  })
});
