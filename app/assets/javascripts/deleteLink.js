function deleteLink() {
  $('#link-index').delegate('#delete-link', 'click', function() {
    var link = this.closest(".link");

    $.ajax({
      type: 'DELETE',
      url: '/api/v1/links/' + $(link).attr('data-id'),
      success: function() {
        $(link).remove()
      },
      error: function(xhr) {
        console.log(xhr.responseText)
      }
    })
  })
};
